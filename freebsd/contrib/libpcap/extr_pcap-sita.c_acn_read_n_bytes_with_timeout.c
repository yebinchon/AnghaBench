
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int r_fds ;
struct TYPE_3__ {int fd; int * bp; } ;
typedef TYPE_1__ pcap_t ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int memcpy (int *,int *,int) ;
 int recv (int,int *,int,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int acn_read_n_bytes_with_timeout(pcap_t *handle, int count) {
 struct timeval tv;
 int retval, fd;
 fd_set r_fds;
 fd_set w_fds;
 u_char *bp;
 int len = 0;
 int offset = 0;

 tv.tv_sec = 5;
 tv.tv_usec = 0;

 fd = handle->fd;
 FD_ZERO(&r_fds);
 FD_SET(fd, &r_fds);
 memcpy(&w_fds, &r_fds, sizeof(r_fds));
 bp = handle->bp;
 while (count) {
  retval = select(fd + 1, &w_fds, ((void*)0), ((void*)0), &tv);
  if (retval == -1) {

   return -1;
  } else if (retval == 0) {

   return -1;
  } else {
   if ((len = recv(fd, (bp + offset), count, 0)) <= 0) {

    return -1;
   }
   count -= len;
   offset += len;
  }
 }
 return 0;
}
