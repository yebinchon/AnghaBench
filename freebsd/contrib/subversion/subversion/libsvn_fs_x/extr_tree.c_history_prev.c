
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_19__ {int change_set; } ;
struct TYPE_18__ {char const* created_path; TYPE_2__ predecessor_id; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef TYPE_2__ svn_fs_x__id_t ;
struct TYPE_20__ {int * node; } ;
typedef TYPE_3__ svn_fs_x__dag_path_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
struct TYPE_21__ {TYPE_5__* fsap_data; } ;
typedef TYPE_4__ svn_fs_history_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_22__ {char* path; scalar_t__ revision; int is_interesting; scalar_t__ next_copy; char* path_hint; scalar_t__ rev_hint; TYPE_2__ current_id; int * fs; } ;
typedef TYPE_5__ fs_history_data_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_4__* assemble_history (int *,char const*,scalar_t__,int,char const*,scalar_t__,scalar_t__,TYPE_2__*,int *) ;
 int assert (int) ;
 int find_youngest_copyroot (scalar_t__*,char const**,int *,TYPE_3__*) ;
 char* svn_fs_x__dag_get_copyfrom_path (int *) ;
 scalar_t__ svn_fs_x__dag_get_copyfrom_rev (int *) ;
 char* svn_fs_x__dag_get_created_path (int *) ;
 int svn_fs_x__dag_get_node (int **,int *,TYPE_2__*,int *,int *) ;
 TYPE_2__* svn_fs_x__dag_get_predecessor_id (int *) ;
 scalar_t__ svn_fs_x__dag_get_revision (int *) ;
 int svn_fs_x__get_dag_path (TYPE_3__**,int *,char const*,int ,int,int *,int *) ;
 int svn_fs_x__get_node_revision (TYPE_1__**,int *,TYPE_2__*,int *,int *) ;
 scalar_t__ svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;
 int svn_fs_x__id_reset (TYPE_2__*) ;
 scalar_t__ svn_fs_x__id_used (TYPE_2__*) ;
 int svn_fs_x__revision_root (int **,int *,scalar_t__,int *) ;
 char* svn_fspath__join (char const*,char const*,int *) ;
 char* svn_fspath__skip_ancestor (char const*,char const*) ;

__attribute__((used)) static svn_error_t *
history_prev(svn_fs_history_t **prev_history,
             svn_fs_history_t *history,
             svn_boolean_t cross_copies,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  fs_history_data_t *fhd = history->fsap_data;
  const char *commit_path, *src_path, *path = fhd->path;
  svn_revnum_t commit_rev, src_rev, dst_rev;
  svn_revnum_t revision = fhd->revision;
  svn_fs_t *fs = fhd->fs;
  svn_fs_x__dag_path_t *dag_path;
  dag_node_t *node;
  svn_fs_root_t *root;
  svn_boolean_t reported = fhd->is_interesting;
  svn_revnum_t copyroot_rev;
  const char *copyroot_path;
  svn_fs_x__id_t pred_id;


  *prev_history = ((void*)0);




  if ( SVN_IS_VALID_REVNUM(fhd->next_copy)
      && revision > fhd->next_copy
      && svn_fs_x__id_used(&fhd->current_id))
    {


      svn_fs_x__noderev_t *noderev;
      assert(reported);



      SVN_ERR(svn_fs_x__get_node_revision(&noderev, fs, &fhd->current_id,
                                          scratch_pool, scratch_pool));
      if (! svn_fs_x__id_used(&noderev->predecessor_id))
        return SVN_NO_ERROR;



      commit_rev = svn_fs_x__get_revnum(noderev->predecessor_id.change_set);
      if (commit_rev > fhd->next_copy)
        {


          *prev_history = assemble_history(fs, noderev->created_path,
                                           commit_rev, TRUE, ((void*)0),
                                           SVN_INVALID_REVNUM,
                                           fhd->next_copy,
                                           &noderev->predecessor_id,
                                           result_pool);

          return SVN_NO_ERROR;
        }


    }





  if (fhd->path_hint && SVN_IS_VALID_REVNUM(fhd->rev_hint))
    {
      reported = FALSE;
      if (! cross_copies)
        return SVN_NO_ERROR;
      path = fhd->path_hint;
      revision = fhd->rev_hint;
    }


  SVN_ERR(svn_fs_x__revision_root(&root, fs, revision, scratch_pool));



  SVN_ERR(svn_fs_x__get_dag_path(&dag_path, root, path, 0, FALSE,
                                 scratch_pool, scratch_pool));
  node = dag_path->node;
  commit_path = svn_fs_x__dag_get_created_path(node);
  commit_rev = svn_fs_x__dag_get_revision(node);
  svn_fs_x__id_reset(&pred_id);
  if (revision == commit_rev)
    {
      if (! reported)
        {


          *prev_history = assemble_history(fs, commit_path,
                                           commit_rev, TRUE, ((void*)0),
                                           SVN_INVALID_REVNUM,
                                           SVN_INVALID_REVNUM, ((void*)0),
                                           result_pool);
          return SVN_NO_ERROR;
        }
      else
        {



          pred_id = *svn_fs_x__dag_get_predecessor_id(node);
          if (!svn_fs_x__id_used(&pred_id))
            return SVN_NO_ERROR;



          SVN_ERR(svn_fs_x__dag_get_node(&node, fs, &pred_id, scratch_pool,
                                         scratch_pool));
          commit_path = svn_fs_x__dag_get_created_path(node);
          commit_rev = svn_fs_x__dag_get_revision(node);
        }
    }



  SVN_ERR(find_youngest_copyroot(&copyroot_rev, &copyroot_path, fs,
                                 dag_path));


  src_path = ((void*)0);
  src_rev = SVN_INVALID_REVNUM;
  dst_rev = SVN_INVALID_REVNUM;

  if (copyroot_rev > commit_rev)
    {
      const char *remainder_path;
      const char *copy_dst, *copy_src;
      svn_fs_root_t *copyroot_root;

      SVN_ERR(svn_fs_x__revision_root(&copyroot_root, fs, copyroot_rev,
                                       scratch_pool));
      SVN_ERR(svn_fs_x__get_temp_dag_node(&node, copyroot_root,
                                          copyroot_path, scratch_pool));
      copy_dst = svn_fs_x__dag_get_created_path(node);
      remainder_path = svn_fspath__skip_ancestor(copy_dst, path);

      if (remainder_path)
        {



          src_rev = svn_fs_x__dag_get_copyfrom_rev(node);
          copy_src = svn_fs_x__dag_get_copyfrom_path(node);

          dst_rev = copyroot_rev;
          src_path = svn_fspath__join(copy_src, remainder_path, scratch_pool);
        }
    }



  if (src_path && SVN_IS_VALID_REVNUM(src_rev))
    {
      svn_boolean_t retry = FALSE;





      if ((dst_rev == revision) && reported)
        retry = TRUE;

      *prev_history = assemble_history(fs, path, dst_rev, ! retry,
                                       src_path, src_rev,
                                       SVN_INVALID_REVNUM, ((void*)0),
                                       result_pool);
    }
  else
    {



      *prev_history = assemble_history(fs, commit_path, commit_rev, TRUE,
                                       ((void*)0), SVN_INVALID_REVNUM,
                                       copyroot_rev, &pred_id, result_pool);
    }

  return SVN_NO_ERROR;
}
