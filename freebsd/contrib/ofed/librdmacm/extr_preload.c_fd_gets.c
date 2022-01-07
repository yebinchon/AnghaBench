
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_info {int state; } ;
typedef enum fd_fork_state { ____Placeholder_fd_fork_state } fd_fork_state ;


 int fd_ready ;
 int idm ;
 struct fd_info* idm_lookup (int *,int) ;

__attribute__((used)) static inline enum fd_fork_state fd_gets(int index)
{
 struct fd_info *fdi;

 fdi = idm_lookup(&idm, index);
 return fdi ? fdi->state : fd_ready;
}
