
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_fds {int * cfd; int * pfd; } ;
typedef scalar_t__ ssize_t ;


 int CLOSEFD (int ) ;
 int printf (char*,char const*) ;
 scalar_t__ read (int ,void*,size_t) ;
 scalar_t__ write (int ,void*,size_t) ;

__attribute__((used)) static int
msg_read_parent(const char *info, struct msg_fds *fds, void *msg, size_t len)
{
 ssize_t rv;
 CLOSEFD(fds->pfd[1]);
 CLOSEFD(fds->cfd[0]);

 printf("Wait %s\n", info);
 rv = read(fds->pfd[0], msg, len);
 if (rv != (ssize_t)len)
  return 1;

 rv = write(fds->cfd[1], msg, len);
 if (rv != (ssize_t)len)
  return 1;
 return 0;
}
