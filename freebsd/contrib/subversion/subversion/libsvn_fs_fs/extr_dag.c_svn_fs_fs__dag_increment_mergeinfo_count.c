
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int mergeinfo_count; scalar_t__ kind; int id; } ;
typedef TYPE_2__ node_revision_t ;
struct TYPE_12__ {int fs; int id; } ;
typedef TYPE_3__ dag_node_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int APR_INT64_T_FMT ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,int ) ;
 int get_node_revision (TYPE_2__**,TYPE_3__*) ;
 int * svn_error_createf (int ,int *,char*,int ,...) ;
 int svn_fs_fs__dag_check_mutable (TYPE_3__*) ;
 TYPE_1__* svn_fs_fs__id_unparse (int ,int *) ;
 int * svn_fs_fs__put_node_revision (int ,int ,TYPE_2__*,int ,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_fs__dag_increment_mergeinfo_count(dag_node_t *node,
                                         apr_int64_t increment,
                                         apr_pool_t *pool)
{
  node_revision_t *noderev;


  if (! svn_fs_fs__dag_check_mutable(node))
    {
      svn_string_t *idstr = svn_fs_fs__id_unparse(node->id, pool);
      return svn_error_createf
        (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
         "Can't increment mergeinfo count on *immutable* node-revision %s",
         idstr->data);
    }

  if (increment == 0)
    return SVN_NO_ERROR;


  SVN_ERR(get_node_revision(&noderev, node));

  noderev->mergeinfo_count += increment;
  if (noderev->mergeinfo_count < 0)
    {
      svn_string_t *idstr = svn_fs_fs__id_unparse(node->id, pool);
      return svn_error_createf
        (SVN_ERR_FS_CORRUPT, ((void*)0),
         apr_psprintf(pool,
                      _("Can't increment mergeinfo count on node-revision %%s "
                        "to negative value %%%s"),
                      APR_INT64_T_FMT),
         idstr->data, noderev->mergeinfo_count);
    }
  if (noderev->mergeinfo_count > 1 && noderev->kind == svn_node_file)
    {
      svn_string_t *idstr = svn_fs_fs__id_unparse(node->id, pool);
      return svn_error_createf
        (SVN_ERR_FS_CORRUPT, ((void*)0),
         apr_psprintf(pool,
                      _("Can't increment mergeinfo count on *file* "
                        "node-revision %%s to %%%s (> 1)"),
                      APR_INT64_T_FMT),
         idstr->data, noderev->mergeinfo_count);
    }


  return svn_fs_fs__put_node_revision(node->fs, noderev->id,
                                      noderev, FALSE, pool);
}
