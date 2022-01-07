
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* fds_bits; } ;
typedef TYPE_1__ fd_set ;
typedef unsigned long fd_mask ;


 int FD_SETSIZE ;
 scalar_t__ NFDBITS ;
 int assert (int ) ;
 int ffsl (unsigned long) ;
 int svc_getreq_common (int) ;

void
svc_getreqset(fd_set *readfds)
{
 int bit, fd;
 fd_mask mask, *maskp;
 int sock;

 assert(readfds != ((void*)0));

 maskp = readfds->fds_bits;
 for (sock = 0; sock < FD_SETSIZE; sock += NFDBITS) {
     for (mask = *maskp++; (bit = ffsl(mask)) != 0;
  mask ^= (1ul << (bit - 1))) {

  fd = sock + bit - 1;
  svc_getreq_common(fd);
     }
 }
}
