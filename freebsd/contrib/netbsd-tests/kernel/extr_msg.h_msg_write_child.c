
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
msg_write_child(const char *info, struct msg_fds *fds, void *msg, size_t len)
{
 ssize_t rv;
 CLOSEFD(fds->cfd[1]);
 CLOSEFD(fds->pfd[0]);

 printf("Send %s\n", info);
 rv = write(fds->pfd[1], msg, len);
 if (rv != (ssize_t)len)
  return 1;

 rv = read(fds->cfd[0], msg, len);
 if (rv != (ssize_t)len)
  return 1;
 return 0;
}
