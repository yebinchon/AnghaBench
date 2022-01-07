
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int path; TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
struct TYPE_10__ {int fs_type; } ;
typedef TYPE_3__ svn_fs_info_placeholder_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int (* info_fsap ) (void const**,TYPE_2__*,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_3__* apr_palloc (int *,int) ;
 int stub1 (void const**,TYPE_2__*,int *,int *) ;
 int svn_fs_type (int *,int ,int *) ;

svn_error_t *
svn_fs_info(const svn_fs_info_placeholder_t **info_p,
            svn_fs_t *fs,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  if (fs->vtable->info_fsap)
    {
      SVN_ERR(fs->vtable->info_fsap((const void **)info_p, fs,
                                    result_pool, scratch_pool));
    }
  else
    {
      svn_fs_info_placeholder_t *info = apr_palloc(result_pool, sizeof(*info));

      SVN_ERR(svn_fs_type(&info->fs_type, fs->path, result_pool));
      *info_p = info;
    }
  return SVN_NO_ERROR;
}
