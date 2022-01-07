
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int errno ;
 int error (char*,int,char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 char* strerror (int ) ;

int
set_reuseaddr(int fd)
{
 int on = 1;

 if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) == -1) {
  error("setsockopt SO_REUSEADDR fd %d: %s", fd, strerror(errno));
  return -1;
 }
 return 0;
}
