
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_info {int fd; int type; } ;
typedef enum fd_type { ____Placeholder_fd_type } fd_type ;


 int fd_normal ;
 int idm ;
 struct fd_info* idm_lookup (int *,int) ;

__attribute__((used)) static inline enum fd_type fd_get(int index, int *fd)
{
 struct fd_info *fdi;

 fdi = idm_lookup(&idm, index);
 if (fdi) {
  *fd = fdi->fd;
  return fdi->type;

 } else {
  *fd = index;
  return fd_normal;
 }
}
