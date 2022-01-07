
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int fs; TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR_FS_NOT_DIRECTORY ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_fs_x__rep_contents_dir (int **,int ,TYPE_1__*,int *,int *) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_x__dag_dir_entries(apr_array_header_t **entries,
                          dag_node_t *node,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev = node->node_revision;

  if (noderev->kind != svn_node_dir)
    return svn_error_create(SVN_ERR_FS_NOT_DIRECTORY, ((void*)0),
                            _("Can't get entries of non-directory"));

  return svn_fs_x__rep_contents_dir(entries, node->fs, noderev, result_pool,
                                    scratch_pool);
}
