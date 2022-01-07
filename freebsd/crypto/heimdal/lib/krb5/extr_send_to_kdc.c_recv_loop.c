
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
typedef scalar_t__ krb5_socket_t ;
struct TYPE_5__ {size_t length; void* data; } ;
typedef TYPE_1__ krb5_data ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 int FD_SET (scalar_t__,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int FIONREAD ;
 scalar_t__ errno ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 int min (size_t,size_t) ;
 void* realloc (void*,size_t) ;
 int recv (scalar_t__,char*,int,int ) ;
 scalar_t__ rk_SOCK_IOCTL (scalar_t__,int ,int*) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
recv_loop (krb5_socket_t fd,
    time_t tmout,
    int udp,
    size_t limit,
    krb5_data *rep)
{
     fd_set fdset;
     struct timeval timeout;
     int ret;
     int nbytes;


     if (fd >= FD_SETSIZE) {
  return -1;
     }


     krb5_data_zero(rep);
     do {
  FD_ZERO(&fdset);
  FD_SET(fd, &fdset);
  timeout.tv_sec = tmout;
  timeout.tv_usec = 0;
  ret = select (fd + 1, &fdset, ((void*)0), ((void*)0), &timeout);
  if (ret < 0) {
      if (errno == EINTR)
   continue;
      return -1;
  } else if (ret == 0) {
      return 0;
  } else {
      void *tmp;

      if (rk_SOCK_IOCTL (fd, FIONREAD, &nbytes) < 0) {
   krb5_data_free (rep);
   return -1;
      }
      if(nbytes <= 0)
   return 0;

      if (limit)
   nbytes = min((size_t)nbytes, limit - rep->length);

      tmp = realloc (rep->data, rep->length + nbytes);
      if (tmp == ((void*)0)) {
   krb5_data_free (rep);
   return -1;
      }
      rep->data = tmp;
      ret = recv (fd, (char*)tmp + rep->length, nbytes, 0);
      if (ret < 0) {
   krb5_data_free (rep);
   return -1;
      }
      rep->length += ret;
  }
     } while(!udp && (limit == 0 || rep->length < limit));
     return 0;
}
