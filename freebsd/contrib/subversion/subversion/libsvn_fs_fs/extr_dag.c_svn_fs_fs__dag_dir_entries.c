
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_8__ {int fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_DIRECTORY ;
 int _ (char*) ;
 int get_node_revision (TYPE_1__**,TYPE_2__*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_fs_fs__rep_contents_dir (int **,int ,TYPE_1__*,int *,int *) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_fs__dag_dir_entries(apr_array_header_t **entries,
                           dag_node_t *node,
                           apr_pool_t *pool)
{
  node_revision_t *noderev;

  SVN_ERR(get_node_revision(&noderev, node));

  if (noderev->kind != svn_node_dir)
    return svn_error_create(SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
                            _("Can't get entries of non-directory"));

  return svn_fs_fs__rep_contents_dir(entries, node->fs, noderev, pool, pool);
}
