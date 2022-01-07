
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
typedef int ssize_t ;
typedef int isc_uint32_t ;
struct TYPE_5__ {int handle; size_t sz_to_recv; int status; } ;
struct TYPE_6__ {TYPE_1__ usocket; } ;
struct TYPE_7__ {TYPE_2__ sources; scalar_t__ bad; int * ent; } ;
typedef TYPE_3__ isc_entropysource_t ;
typedef int isc_entropy_t ;
typedef int buf ;


 int EAGAIN ;
 int ECONNRESET ;
 int EINTR ;
 int EWOULDBLOCK ;
 int INSIST (int) ;
 int ISC_MIN (int,int) ;
 scalar_t__ ISC_TRUE ;
 int close (int) ;
 int entropypool_adddata (int *,unsigned char*,int,int) ;
 int errno ;


 int isc_usocketsource_disconnected ;



 int nanosleep (struct timespec*,int *) ;
 int recv (int,unsigned char*,size_t,int ) ;
 int recvfrom (int,unsigned char*,int,int ,int *,int *) ;
 int sendto (int,unsigned char*,int,int ,int *,int ) ;
 int usleep (int) ;

__attribute__((used)) static unsigned int
get_from_usocketsource(isc_entropysource_t *source, isc_uint32_t desired) {
 isc_entropy_t *ent = source->ent;
 unsigned char buf[128];
 int fd = source->sources.usocket.handle;
 ssize_t n = 0, ndesired;
 unsigned int added;
 size_t sz_to_recv = source->sources.usocket.sz_to_recv;

 if (source->bad)
  return (0);

 desired = desired / 8 + (((desired & 0x07) > 0) ? 1 : 0);

 added = 0;
 while (desired > 0) {
  ndesired = ISC_MIN(desired, sizeof(buf));
 eagain_loop:

  switch ( source->sources.usocket.status ) {
  case 130:
   buf[0] = ndesired;
   if ((n = sendto(fd, buf, 1, 0, ((void*)0), 0)) < 0) {
    if (errno == EWOULDBLOCK || errno == EINTR ||
        errno == ECONNRESET)
     goto out;
    goto err;
   }
   INSIST(n == 1);
   source->sources.usocket.status =
      128;
   goto eagain_loop;

  case 131:
  case 132:
   buf[0] = 1;
   buf[1] = ndesired;
   if ((n = sendto(fd, buf, 2, 0, ((void*)0), 0)) < 0) {
    if (errno == EWOULDBLOCK || errno == EINTR ||
        errno == ECONNRESET)
     goto out;
    goto err;
   }
   if (n == 1) {
    source->sources.usocket.status =
     130;
    goto eagain_loop;
   }
   INSIST(n == 2);
   source->sources.usocket.status =
      128;


  case 128:
   if (recvfrom(fd, buf, 1, 0, ((void*)0), ((void*)0)) != 1) {
    if (errno == EAGAIN) {
     usleep(1000);

     goto eagain_loop;
    }
    if (errno == EWOULDBLOCK || errno == EINTR)
     goto out;
    goto err;
   }
   source->sources.usocket.status =
     129;
   sz_to_recv = buf[0];
   source->sources.usocket.sz_to_recv = sz_to_recv;
   if (sz_to_recv > sizeof(buf))
    goto err;


  case 129:
   if (sz_to_recv != 0U) {
    n = recv(fd, buf, sz_to_recv, 0);
    if (n < 0) {
     if (errno == EWOULDBLOCK ||
         errno == EINTR)
      goto out;
     goto err;
    }
   } else
    n = 0;
   break;

  default:
   goto err;
  }

  if ((size_t)n != sz_to_recv)
   source->sources.usocket.sz_to_recv -= n;
  else
   source->sources.usocket.status =
    132;

  if (n == 0)
   goto out;

  entropypool_adddata(ent, buf, n, n * 8);
  added += n * 8;
  desired -= n;
 }
 goto out;

 err:
 close(fd);
 source->bad = ISC_TRUE;
 source->sources.usocket.status = isc_usocketsource_disconnected;
 source->sources.usocket.handle = -1;

 out:
 return (added);
}
