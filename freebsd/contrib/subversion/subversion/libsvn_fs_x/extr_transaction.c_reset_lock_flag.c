
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_write_lock; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int FALSE ;

__attribute__((used)) static apr_status_t
reset_lock_flag(void *baton_void)
{
  svn_fs_x__data_t *ffd = baton_void;
  ffd->has_write_lock = FALSE;
  return APR_SUCCESS;
}
