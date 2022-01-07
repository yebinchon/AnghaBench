
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* check_path ) (scalar_t__*,TYPE_2__*,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (scalar_t__*,TYPE_2__*,char const*,int *) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_is_dir(svn_boolean_t *is_dir, svn_fs_root_t *root, const char *path,
              apr_pool_t *pool)
{
  svn_node_kind_t kind;

  SVN_ERR(root->vtable->check_path(&kind, root, path, pool));
  *is_dir = (kind == svn_node_dir);
  return SVN_NO_ERROR;
}
