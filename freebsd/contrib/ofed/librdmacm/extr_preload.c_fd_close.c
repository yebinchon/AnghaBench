
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd_info {int fd; int type; } ;
typedef enum fd_type { ____Placeholder_fd_type } fd_type ;
struct TYPE_2__ {int (* close ) (int) ;} ;


 int fd_normal ;
 int free (struct fd_info*) ;
 int idm ;
 int idm_clear (int *,int) ;
 struct fd_info* idm_lookup (int *,int) ;
 TYPE_1__ real ;
 int stub1 (int) ;

__attribute__((used)) static enum fd_type fd_close(int index, int *fd)
{
 struct fd_info *fdi;
 enum fd_type type;

 fdi = idm_lookup(&idm, index);
 if (fdi) {
  idm_clear(&idm, index);
  *fd = fdi->fd;
  type = fdi->type;
  real.close(index);
  free(fdi);
 } else {
  *fd = index;
  type = fd_normal;
 }
 return type;
}
