
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
struct TYPE_11__ {int len; int * data; int member_0; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct insert_base_baton_t {char const* repos_relpath; int revision; scalar_t__ kind; int status; scalar_t__ repos_id; } ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int STMT_APPLY_CHANGES_TO_BASE_NODE ;
 int STMT_CLEAR_MOVED_TO_FROM_DEST ;
 int STMT_DELETE_ACTUAL_NODE ;
 int STMT_DELETE_LOCK ;
 int STMT_DELETE_LOCK_RECURSIVELY ;
 int STMT_DELETE_NODE_ALL_LAYERS ;
 int STMT_DELETE_SHADOWED_RECURSIVE ;
 int STMT_RESET_ACTUAL_WITH_CHANGELIST ;
 int STMT_SELECT_ACTUAL_NODE ;
 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int add_work_items (int ,int const*,int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 int blank_ibb (struct insert_base_baton_t*) ;
 int clear_moved_here (TYPE_1__*,int ,int *) ;
 int descendant_commit (TYPE_1__*,char const*,int,scalar_t__,char const*,int ,int *) ;
 int determine_commit_repos_info (scalar_t__*,char const**,TYPE_1__*,char const*,int *,int *) ;
 int insert_base_node (struct insert_base_baton_t*,TYPE_1__*,char const*,int *) ;
 int kind_map ;
 int moved_descendant_collect (int **,TYPE_1__*,char const*,int ,int *,int *) ;
 int moved_descendant_commit (TYPE_1__*,char const*,scalar_t__,char const*,int ,int *,int *) ;
 int presence_map ;
 int relpath_depth (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ svn_node_dir ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bind_blob (int *,int,int *,int ) ;
 int svn_sqlite__bind_checksum (int *,int,int const*,int *) ;
 int svn_sqlite__bind_properties (int *,int,int *,int *) ;
 int svn_sqlite__bindf (int *,char*,scalar_t__,char const*,...) ;
 void* svn_sqlite__column_blob (int *,int,int *,int *) ;
 int svn_sqlite__column_int (int *,int) ;
 scalar_t__ svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_is_null (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;
 int svn_sqlite__step_done (int *) ;
 int svn_sqlite__step_row (int *) ;
 int svn_sqlite__update (int*,int *) ;
 scalar_t__ svn_wc__db_status_base_deleted ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 int svn_wc__db_status_not_present ;

__attribute__((used)) static svn_error_t *
commit_node(svn_wc__db_wcroot_t *wcroot,
            const char *local_relpath,
            svn_revnum_t new_revision,
            svn_revnum_t changed_rev,
            apr_time_t changed_date,
            const char *changed_author,
            const svn_checksum_t *new_checksum,
            apr_hash_t *new_dav_cache,
            svn_boolean_t keep_changelist,
            svn_boolean_t no_unlock,
            const svn_skel_t *work_items,
            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt_info;
  svn_sqlite__stmt_t *stmt_act;
  svn_boolean_t have_act;
  svn_string_t prop_blob = { 0 };
  svn_string_t inherited_prop_blob = { 0 };
  const char *changelist = ((void*)0);
  const char *parent_relpath;
  svn_wc__db_status_t new_presence;
  svn_node_kind_t new_kind;
  const char *new_depth_str = ((void*)0);
  svn_sqlite__stmt_t *stmt;
  apr_int64_t repos_id;
  const char *repos_relpath;
  int op_depth;
  svn_wc__db_status_t old_presence;
  svn_boolean_t moved_here;







  SVN_ERR(determine_commit_repos_info(&repos_id, &repos_relpath,
                                      wcroot, local_relpath,
                                      scratch_pool, scratch_pool));


  SVN_ERR(svn_sqlite__get_statement(&stmt_info, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  SVN_ERR(svn_sqlite__bindf(stmt_info, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step_row(stmt_info));

  SVN_ERR(svn_sqlite__get_statement(&stmt_act, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt_act, "is",
                            wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_act, stmt_act));



  op_depth = svn_sqlite__column_int(stmt_info, 0);



  old_presence = svn_sqlite__column_token(stmt_info, 3, presence_map);
  new_kind = svn_sqlite__column_token(stmt_info, 4, kind_map);


  if (new_kind == svn_node_dir)
    new_depth_str = svn_sqlite__column_text(stmt_info, 11, scratch_pool);


  if (op_depth == 0)
    {
      SVN_ERR_ASSERT(!svn_sqlite__column_is_null(stmt_info, 1));
      SVN_ERR_ASSERT(!svn_sqlite__column_is_null(stmt_info, 2));


      SVN_ERR_ASSERT(repos_id == svn_sqlite__column_int64(stmt_info, 1));
      SVN_ERR_ASSERT(strcmp(repos_relpath,
                            svn_sqlite__column_text(stmt_info, 2, ((void*)0))) == 0);
    }

  if (old_presence != svn_wc__db_status_base_deleted)
    {





      if (have_act)
        prop_blob.data = svn_sqlite__column_blob(stmt_act, 1, &prop_blob.len,
                                                 scratch_pool);
      if (prop_blob.data == ((void*)0))
        prop_blob.data = svn_sqlite__column_blob(stmt_info, 14, &prop_blob.len,
                                                 scratch_pool);

      inherited_prop_blob.data = svn_sqlite__column_blob(
                                            stmt_info, 16,
                                            &inherited_prop_blob.len,
                                            scratch_pool);

      if (keep_changelist && have_act)
        changelist = svn_sqlite__column_text(stmt_act, 0, scratch_pool);

      moved_here = svn_sqlite__column_int(stmt_info, 15);
    }
  else
    {
      moved_here = FALSE;
      changelist = ((void*)0);
    }



  SVN_ERR(svn_sqlite__reset(stmt_info));
  SVN_ERR(svn_sqlite__reset(stmt_act));

  if (op_depth > 0)
    {
      int affected_rows;

      SVN_ERR_ASSERT(op_depth == relpath_depth(local_relpath));


      {
        apr_hash_t *old_moves;
        apr_hash_index_t *hi;
        SVN_ERR(moved_descendant_collect(&old_moves, wcroot, local_relpath, 0,
                                         scratch_pool, scratch_pool));

        if (old_moves)
          for (hi = apr_hash_first(scratch_pool, old_moves);
                hi; hi = apr_hash_next(hi))
            {
              SVN_ERR(clear_moved_here(wcroot, apr_hash_this_key(hi),
                                        scratch_pool));
            }
      }




      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_NODE_ALL_LAYERS));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

      if (affected_rows > 1)
        {






          SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                            STMT_DELETE_SHADOWED_RECURSIVE));

          SVN_ERR(svn_sqlite__bindf(stmt,
                                    "isd",
                                    wcroot->wc_id,
                                    local_relpath,
                                    op_depth));

          SVN_ERR(svn_sqlite__step_done(stmt));
        }





      if (old_presence != svn_wc__db_status_base_deleted)
        {


          SVN_ERR(descendant_commit(wcroot, local_relpath, op_depth,
                                    repos_id, repos_relpath, new_revision,
                                    scratch_pool));
        }

      if (old_presence != svn_wc__db_status_base_deleted)
        {
          apr_hash_t *moves = ((void*)0);

          SVN_ERR(moved_descendant_collect(&moves, wcroot, local_relpath, 0,
                                           scratch_pool, scratch_pool));



          SVN_ERR(moved_descendant_commit(wcroot, local_relpath,
                                      repos_id, repos_relpath, new_revision,
                                      moves, scratch_pool));
        }

      if (moved_here)
        {

          SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                            STMT_CLEAR_MOVED_TO_FROM_DEST));
          SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id,
                                                local_relpath));

          SVN_ERR(svn_sqlite__step_done(stmt));
        }
    }


  if (*local_relpath == '\0')
    parent_relpath = ((void*)0);
  else
    parent_relpath = svn_relpath_dirname(local_relpath, scratch_pool);


  if (old_presence != svn_wc__db_status_base_deleted)
    {
      new_presence = (old_presence == svn_wc__db_status_incomplete
                      ? svn_wc__db_status_incomplete
                      : svn_wc__db_status_normal);

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_APPLY_CHANGES_TO_BASE_NODE));

      SVN_ERR(svn_sqlite__bindf(stmt, "issisrtstrisnbn",
                                wcroot->wc_id, local_relpath,
                                parent_relpath,
                                repos_id,
                                repos_relpath,
                                new_revision,
                                presence_map, new_presence,
                                new_depth_str,
                                kind_map, new_kind,
                                changed_rev,
                                changed_date,
                                changed_author,
                                prop_blob.data, prop_blob.len));

      SVN_ERR(svn_sqlite__bind_checksum(stmt, 13, new_checksum,
                                        scratch_pool));
      SVN_ERR(svn_sqlite__bind_properties(stmt, 15, new_dav_cache,
                                          scratch_pool));
      if (inherited_prop_blob.data != ((void*)0))
        {
          SVN_ERR(svn_sqlite__bind_blob(stmt, 17, inherited_prop_blob.data,
                                        inherited_prop_blob.len));
        }

      SVN_ERR(svn_sqlite__step_done(stmt));
    }
  else
    {
      struct insert_base_baton_t ibb;
      blank_ibb(&ibb);

      ibb.repos_id = repos_id;
      ibb.status = svn_wc__db_status_not_present;
      ibb.kind = new_kind;
      ibb.repos_relpath = repos_relpath;
      ibb.revision = new_revision;

      SVN_ERR(insert_base_node(&ibb, wcroot, local_relpath, scratch_pool));

      keep_changelist = FALSE;
    }

  if (have_act)
    {
      if (keep_changelist && changelist != ((void*)0))
        {


          SVN_ERR(svn_sqlite__get_statement(
                    &stmt, wcroot->sdb,
                    STMT_RESET_ACTUAL_WITH_CHANGELIST));
          SVN_ERR(svn_sqlite__bindf(stmt, "isss",
                                    wcroot->wc_id, local_relpath,
                                    svn_relpath_dirname(local_relpath,
                                                        scratch_pool),
                                    changelist));
          SVN_ERR(svn_sqlite__step_done(stmt));
        }
      else
        {

          SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                            STMT_DELETE_ACTUAL_NODE));
          SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
          SVN_ERR(svn_sqlite__step_done(stmt));
        }
    }

  if (!no_unlock)
    {
      svn_sqlite__stmt_t *lock_stmt;
      svn_boolean_t op_root = (op_depth > 0
                               && (relpath_depth(local_relpath) == op_depth));






      SVN_ERR(svn_sqlite__get_statement(&lock_stmt, wcroot->sdb,
                                        op_root
                                          ? STMT_DELETE_LOCK_RECURSIVELY
                                          : STMT_DELETE_LOCK));
      SVN_ERR(svn_sqlite__bindf(lock_stmt, "is", repos_id, repos_relpath));
      SVN_ERR(svn_sqlite__step_done(lock_stmt));
    }


  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
