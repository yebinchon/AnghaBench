
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uuid; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int strcmp (int ,int ) ;

__attribute__((used)) static svn_error_t *
x_same_p(svn_boolean_t *same_p,
         svn_fs_t *fs1,
         svn_fs_t *fs2,
         apr_pool_t *scratch_pool)
{
  *same_p = ! strcmp(fs1->uuid, fs2->uuid);
  return SVN_NO_ERROR;
}
