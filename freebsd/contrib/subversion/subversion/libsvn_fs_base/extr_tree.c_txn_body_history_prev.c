
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_id_t ;
struct TYPE_22__ {TYPE_5__* fsap_data; } ;
typedef TYPE_2__ svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct revision_root_args {scalar_t__ rev; int ** root_p; } ;
struct history_prev_args {int cross_copies; int * pool; TYPE_2__* history; TYPE_2__** prev_history_p; } ;
struct TYPE_23__ {int * node; } ;
typedef TYPE_3__ parent_path_t ;
typedef int dag_node_t ;
struct TYPE_24__ {scalar_t__ kind; int src_path; int const* dst_noderev_id; int src_txn_id; } ;
typedef TYPE_4__ copy_t ;
struct TYPE_25__ {char* path; scalar_t__ revision; int is_interesting; char* path_hint; scalar_t__ rev_hint; int * fs; } ;
typedef TYPE_5__ base_history_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pstrdup (int *,char const*) ;
 TYPE_2__* assemble_history (int *,int ,scalar_t__,int,char const*,scalar_t__,int *) ;
 scalar_t__ copy_kind_soft ;
 int examine_copy_inheritance (char const**,TYPE_4__**,int *,TYPE_3__*,TYPE_1__*,int ) ;
 int open_path (TYPE_3__**,int *,char const*,int ,char const*,TYPE_1__*,int ) ;
 scalar_t__ strcmp (int ,char const*) ;
 char* svn_fs_base__dag_get_created_path (int *) ;
 int * svn_fs_base__dag_get_id (int *) ;
 int svn_fs_base__dag_get_node (int **,int *,int const*,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_predecessor_id (int const**,int *,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_revision (scalar_t__*,int *,TYPE_1__*,int ) ;
 int svn_fs_base__id_copy_id (int const*) ;
 int svn_fs_base__id_txn_id (int const*) ;
 int svn_fs_base__rev_get_txn_id (char const**,int *,scalar_t__,TYPE_1__*,int ) ;
 int svn_fs_base__txn_get_revision (scalar_t__*,int *,int ,TYPE_1__*,int ) ;
 int svn_fs_bdb__get_copy (TYPE_4__**,int *,char const*,TYPE_1__*,int ) ;
 char* svn_fspath__join (int ,char const*,int ) ;
 char* svn_fspath__skip_ancestor (char const*,char const*) ;
 int txn_body_revision_root (struct revision_root_args*,TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
txn_body_history_prev(void *baton, trail_t *trail)
{
  struct history_prev_args *args = baton;
  svn_fs_history_t **prev_history = args->prev_history_p;
  svn_fs_history_t *history = args->history;
  base_history_data_t *bhd = history->fsap_data;
  const char *commit_path, *src_path, *path = bhd->path;
  svn_revnum_t commit_rev, src_rev, dst_rev, revision = bhd->revision;
  apr_pool_t *retpool = args->pool;
  svn_fs_t *fs = bhd->fs;
  parent_path_t *parent_path;
  dag_node_t *node;
  svn_fs_root_t *root;
  const svn_fs_id_t *node_id;
  const char *end_copy_id = ((void*)0);
  struct revision_root_args rr_args;
  svn_boolean_t reported = bhd->is_interesting;
  const char *txn_id;
  copy_t *copy = ((void*)0);
  svn_boolean_t retry = FALSE;


  *prev_history = ((void*)0);





  if (bhd->path_hint && SVN_IS_VALID_REVNUM(bhd->rev_hint))
    {
      reported = FALSE;
      if (! args->cross_copies)
        return SVN_NO_ERROR;
      path = bhd->path_hint;
      revision = bhd->rev_hint;
    }


  rr_args.root_p = &root;
  rr_args.rev = revision;
  SVN_ERR(txn_body_revision_root(&rr_args, trail));



  SVN_ERR(svn_fs_base__rev_get_txn_id(&txn_id, fs, revision, trail,
                                      trail->pool));
  SVN_ERR(open_path(&parent_path, root, path, 0, txn_id,
                    trail, trail->pool));
  node = parent_path->node;
  node_id = svn_fs_base__dag_get_id(node);
  commit_path = svn_fs_base__dag_get_created_path(node);
  SVN_ERR(svn_fs_base__dag_get_revision(&commit_rev, node,
                                        trail, trail->pool));
  if (revision == commit_rev)
    {
      if (! reported)
        {


          *prev_history = assemble_history(fs,
                                           apr_pstrdup(retpool, commit_path),
                                           commit_rev, TRUE, ((void*)0),
                                           SVN_INVALID_REVNUM, retpool);
          return SVN_NO_ERROR;
        }
      else
        {



          const svn_fs_id_t *pred_id;

          SVN_ERR(svn_fs_base__dag_get_predecessor_id(&pred_id, node,
                                                      trail, trail->pool));
          if (! pred_id)
            return SVN_NO_ERROR;



          SVN_ERR(svn_fs_base__dag_get_node(&node, fs, pred_id,
                                            trail, trail->pool));
          node_id = svn_fs_base__dag_get_id(node);
          commit_path = svn_fs_base__dag_get_created_path(node);
          SVN_ERR(svn_fs_base__dag_get_revision(&commit_rev, node,
                                                trail, trail->pool));
        }
    }


  SVN_ERR(examine_copy_inheritance(&end_copy_id, &copy, fs,
                                   parent_path, trail, trail->pool));


  src_path = ((void*)0);
  src_rev = SVN_INVALID_REVNUM;
  dst_rev = SVN_INVALID_REVNUM;







  if (strcmp(svn_fs_base__id_copy_id(node_id), end_copy_id) != 0)
    {
      const char *remainder;
      dag_node_t *dst_node;
      const char *copy_dst;


      if (! copy)
        SVN_ERR(svn_fs_bdb__get_copy(&copy, fs, end_copy_id, trail,
                                     trail->pool));


      SVN_ERR(svn_fs_base__dag_get_node(&dst_node, fs,
                                        copy->dst_noderev_id,
                                        trail, trail->pool));
      copy_dst = svn_fs_base__dag_get_created_path(dst_node);
      remainder = svn_fspath__skip_ancestor(copy_dst, path);

      if (remainder)
        {



          SVN_ERR(svn_fs_base__txn_get_revision
                  (&src_rev, fs, copy->src_txn_id, trail, trail->pool));
          SVN_ERR(svn_fs_base__txn_get_revision
                  (&dst_rev, fs,
                   svn_fs_base__id_txn_id(copy->dst_noderev_id),
                   trail, trail->pool));
          src_path = svn_fspath__join(copy->src_path, remainder,
                                     trail->pool);
          if (copy->kind == copy_kind_soft)
            retry = TRUE;
        }
    }





  if (src_path && SVN_IS_VALID_REVNUM(src_rev) && (src_rev >= commit_rev))
    {




      if ((dst_rev == revision) && reported)
        retry = TRUE;

      *prev_history = assemble_history(fs, apr_pstrdup(retpool, path),
                                       dst_rev, ! retry,
                                       src_path, src_rev, retpool);
    }
  else
    {
      *prev_history = assemble_history(fs, apr_pstrdup(retpool, commit_path),
                                       commit_rev, TRUE, ((void*)0),
                                       SVN_INVALID_REVNUM, retpool);
    }

  return SVN_NO_ERROR;
}
