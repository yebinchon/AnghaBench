
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int (* set_svn_fs_open ) (int *,int * (*) (int **,char const*,int *,int *,int *)) ;int (* open_fs ) (int *,char const*,int ,int *,int ) ;} ;
typedef TYPE_1__ fs_library_vtable_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int common_pool ;
 int common_pool_lock ;
 int fs_library_vtable (TYPE_1__**,char const*,int *) ;
 int * fs_new (int *,int *) ;
 int stub1 (int *,char const*,int ,int *,int ) ;
 int stub2 (int *,int * (*) (int **,char const*,int *,int *,int *)) ;

svn_error_t *
svn_fs_open2(svn_fs_t **fs_p, const char *path, apr_hash_t *fs_config,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  fs_library_vtable_t *vtable;

  SVN_ERR(fs_library_vtable(&vtable, path, scratch_pool));
  *fs_p = fs_new(fs_config, result_pool);
  SVN_ERR(vtable->open_fs(*fs_p, path, common_pool_lock, scratch_pool,
                          common_pool));
  SVN_ERR(vtable->set_svn_fs_open(*fs_p, svn_fs_open2));

  return SVN_NO_ERROR;
}
