
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {char action; scalar_t__ kind; } ;
typedef TYPE_1__ svn_repos_node_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct node_baton {int node; struct edit_baton* edit_baton; } ;
struct edit_baton {int fs; int * base_root; int node_pool; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* create_child_node (int ,char const*,int ) ;
 TYPE_1__* find_child_by_name (int ,char const*) ;
 int find_real_base_location (char const**,int *,TYPE_1__*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 scalar_t__ svn_node_none ;
 char* svn_relpath_basename (char const*,int *) ;

__attribute__((used)) static svn_error_t *
delete_entry(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct node_baton *d = parent_baton;
  struct edit_baton *eb = d->edit_baton;
  svn_repos_node_t *node;
  const char *name;
  const char *base_path;
  svn_revnum_t base_rev;
  svn_fs_root_t *base_root;
  svn_node_kind_t kind;


  name = svn_relpath_basename(path, pool);
  node = find_child_by_name(d->node, name);
  if (! node)
    node = create_child_node(d->node, name, eb->node_pool);
  node->action = 'D';






  find_real_base_location(&base_path, &base_rev, node, pool);
  if (! SVN_IS_VALID_REVNUM(base_rev))
    {


      base_root = eb->base_root;
    }
  else
    {

      SVN_ERR(svn_fs_revision_root(&base_root, eb->fs, base_rev, pool));
    }


  SVN_ERR(svn_fs_check_path(&kind, base_root, base_path, pool));
  if (kind == svn_node_none)
    return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                             _("'%s' not found in filesystem"), path);
  node->kind = kind;

  return SVN_NO_ERROR;
}
