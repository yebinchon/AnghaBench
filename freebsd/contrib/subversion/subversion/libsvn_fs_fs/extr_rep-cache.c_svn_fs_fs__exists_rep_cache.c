
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_3__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int path_rep_cache_db (int ,int *) ;
 int svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;

svn_error_t *
svn_fs_fs__exists_rep_cache(svn_boolean_t *exists,
                            svn_fs_t *fs, apr_pool_t *pool)
{
  svn_node_kind_t kind;

  SVN_ERR(svn_io_check_path(path_rep_cache_db(fs->path, pool),
                            &kind, pool));

  *exists = (kind != svn_node_none);
  return SVN_NO_ERROR;
}
