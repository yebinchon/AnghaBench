
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int abspath; int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_wc__db_lock_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_wc__db_moved_to_info_t {struct svn_wc__db_moved_to_info_t* next; void* shadow_op_root_abspath; void* moved_to_abspath; } ;
struct svn_wc__db_info_t {scalar_t__ status; scalar_t__ kind; int file_external; int moved_here; int incomplete; int special; void* has_descendants; int locked; int repos_uuid; int repos_root_url; int copied; int has_checksum; scalar_t__ props_mod; scalar_t__ had_props; int * lock; void* have_base; struct svn_wc__db_moved_to_info_t* moved_to; scalar_t__ have_more_work; int depth; int changed_author; int changed_date; int changed_rev; int repos_relpath; int revnum; int op_root; int conflicted; int changelist; int recorded_time; int recorded_size; } ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int STMT_SELECT_MOVED_TO_NODE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_SPECIAL ;
 void* TRUE ;
 void* apr_pcalloc (int *,int) ;
 int db_read_pristine_props (int **,TYPE_1__*,char const*,void*,int *,int *) ;
 int find_conflict_descendants (void**,TYPE_1__*,char const*,int *) ;
 int is_wclocked (int *,TYPE_1__*,char const*,int *) ;
 int read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int const**,int *,char const**,int *,int *,int **,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,void**,scalar_t__*,scalar_t__*,TYPE_1__*,char const*,int *,int *) ;
 int scan_addition (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 void* svn_dirent_join (int ,char const*,int *) ;
 int * svn_hash_gets (int *,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 char* svn_relpath_prefix (char const*,int,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_base_get_info_internal (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int **,scalar_t__*,int **,scalar_t__*,TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__db_fetch_repos_info (int *,int *,TYPE_1__*,int ,int *) ;
 int svn_wc__db_read_props_internal (int **,TYPE_1__*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_moved_here ;

__attribute__((used)) static svn_error_t *
read_single_info(const struct svn_wc__db_info_t **info,
                 svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 svn_boolean_t base_tree_only,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  struct svn_wc__db_info_t *mtb;
  apr_int64_t repos_id;
  const svn_checksum_t *checksum;
  const char *original_repos_relpath;
  svn_boolean_t have_work;
  apr_hash_t *properties;

  mtb = apr_pcalloc(result_pool, sizeof(*mtb));

  if (!base_tree_only)
    SVN_ERR(read_info(&mtb->status, &mtb->kind, &mtb->revnum,
                      &mtb->repos_relpath, &repos_id, &mtb->changed_rev,
                      &mtb->changed_date, &mtb->changed_author, &mtb->depth,
                      &checksum, ((void*)0), &original_repos_relpath, ((void*)0), ((void*)0),
                      &mtb->lock, &mtb->recorded_size, &mtb->recorded_time,
                      &mtb->changelist, &mtb->conflicted, &mtb->op_root,
                      &mtb->had_props, &mtb->props_mod, &mtb->have_base,
                      &mtb->have_more_work, &have_work,
                      wcroot, local_relpath, result_pool, scratch_pool));
  else
    {
      svn_boolean_t update_root;

      have_work = FALSE;
      original_repos_relpath = ((void*)0);

      SVN_ERR(svn_wc__db_base_get_info_internal(
                  &mtb->status, &mtb->kind, &mtb->revnum, &mtb->repos_relpath,
                  &repos_id, &mtb->changed_rev, &mtb->changed_date,
                  &mtb->changed_author, &mtb->depth, &checksum, ((void*)0),
                  &mtb->lock, &mtb->had_props, &properties, &update_root,
                  wcroot, local_relpath, scratch_pool, scratch_pool));

      mtb->have_base = TRUE;
      mtb->file_external = (update_root && mtb->kind == svn_node_file);
    }


  if (have_work && (mtb->have_base || mtb->have_more_work))
    {
      svn_sqlite__stmt_t *stmt;
      svn_boolean_t have_row;

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_MOVED_TO_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));

      while (have_row)
        {
          struct svn_wc__db_moved_to_info_t *move;
          int op_depth = svn_sqlite__column_int(stmt, 0);
          const char *moved_to_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));
          const char *cur_relpath;

          move = apr_pcalloc(result_pool, sizeof(*move));
          move->moved_to_abspath = svn_dirent_join(wcroot->abspath,
                                                   moved_to_relpath,
                                                   result_pool);

          cur_relpath = svn_relpath_prefix(local_relpath, op_depth,
                                           scratch_pool);

          move->shadow_op_root_abspath = svn_dirent_join(wcroot->abspath,
                                                         cur_relpath,
                                                         result_pool);

          move->next = mtb->moved_to;
          mtb->moved_to = move;

          SVN_ERR(svn_sqlite__step(&have_row, stmt));
        }

      SVN_ERR(svn_sqlite__reset(stmt));
    }




  if (!base_tree_only && mtb->have_base
      && (have_work || mtb->kind == svn_node_file))
    {
      svn_boolean_t update_root;
      svn_wc__db_lock_t **lock_arg = ((void*)0);

      if (have_work)
        lock_arg = &mtb->lock;

      SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                ((void*)0), lock_arg, ((void*)0), ((void*)0),
                                                &update_root,
                                                wcroot, local_relpath,
                                                result_pool, scratch_pool));

      mtb->file_external = (update_root && mtb->kind == svn_node_file);
    }

  if (mtb->status == svn_wc__db_status_added)
    {
      svn_wc__db_status_t status;

      SVN_ERR(scan_addition(&status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                            ((void*)0), ((void*)0),
                            wcroot, local_relpath,
                            result_pool, scratch_pool));

      mtb->moved_here = (status == svn_wc__db_status_moved_here);
      mtb->incomplete = (status == svn_wc__db_status_incomplete);
    }
  mtb->has_checksum = (checksum != ((void*)0));
  mtb->copied = (original_repos_relpath != ((void*)0));

  SVN_ERR(svn_wc__db_fetch_repos_info(&mtb->repos_root_url, &mtb->repos_uuid,
                                      wcroot, repos_id, result_pool));

  if (!base_tree_only && mtb->kind == svn_node_dir)
    SVN_ERR(is_wclocked(&mtb->locked, wcroot, local_relpath, scratch_pool));

  if (mtb->kind == svn_node_dir)
    mtb->has_descendants = TRUE;
  else
    SVN_ERR(find_conflict_descendants(&mtb->has_descendants,
                                      wcroot, local_relpath, scratch_pool));

  *info = mtb;

  return SVN_NO_ERROR;
}
