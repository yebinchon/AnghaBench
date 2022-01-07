
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_fds {int * pfd; int * cfd; } ;


 int close (int ) ;
 int pipe (int *) ;

__attribute__((used)) static int
msg_open(struct msg_fds *fds)
{
 if (pipe(fds->pfd) == -1)
  return -1;
 if (pipe(fds->cfd) == -1) {
  close(fds->pfd[0]);
  close(fds->pfd[1]);
  return -1;
 }
 return 0;
}
