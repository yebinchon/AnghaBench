
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_info {int fd; int type; int state; } ;
typedef enum fd_type { ____Placeholder_fd_type } fd_type ;
typedef enum fd_fork_state { ____Placeholder_fd_fork_state } fd_fork_state ;


 int idm ;
 struct fd_info* idm_at (int *,int) ;

__attribute__((used)) static void fd_store(int index, int fd, enum fd_type type, enum fd_fork_state state)
{
 struct fd_info *fdi;

 fdi = idm_at(&idm, index);
 fdi->fd = fd;
 fdi->type = type;
 fdi->state = state;
}
