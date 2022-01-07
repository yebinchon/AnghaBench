
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_fds {int * cfd; int * pfd; } ;


 int CLOSEFD (int ) ;

__attribute__((used)) static void
msg_close(struct msg_fds *fds)
{
 CLOSEFD(fds->pfd[0]);
 CLOSEFD(fds->pfd[1]);
 CLOSEFD(fds->cfd[0]);
 CLOSEFD(fds->cfd[1]);
}
