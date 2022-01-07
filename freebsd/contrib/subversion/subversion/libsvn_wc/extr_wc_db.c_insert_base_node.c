
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int sdb; int wc_id; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_13__ {scalar_t__ repos_id; scalar_t__ status; scalar_t__ kind; scalar_t__ conflict; int work_items; scalar_t__ insert_base_deleted; scalar_t__ delete_working; scalar_t__ file_external; int children; int revision; int * repos_relpath; scalar_t__ new_actual_props; int * props; scalar_t__ update_actual_props; int * dav_cache; int iprops; int checksum; int * target; int changed_author; int changed_date; int changed_rev; int depth; scalar_t__ keep_recorded_info; int repos_uuid; int repos_root_url; } ;
typedef TYPE_2__ insert_base_baton_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;
struct TYPE_14__ {scalar_t__ nelts; } ;
typedef TYPE_3__ apr_array_header_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int STMT_DELETE_WORKING_NODE ;
 int STMT_INSERT_DELETE_FROM_BASE ;
 int STMT_INSERT_NODE ;
 int STMT_SELECT_BASE_NODE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CORRUPT ;
 scalar_t__ SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_work_items (int ,int ,int *) ;
 scalar_t__ apr_hash_count (int *) ;
 int assert (int) ;
 int create_repos_id (scalar_t__*,int ,int ,int ,int *) ;
 int db_extend_parent_delete (TYPE_1__*,char const*,scalar_t__,int ,int *) ;
 int db_retract_parent_delete (TYPE_1__*,char const*,int ,int *) ;
 int depth_map ;
 scalar_t__ get_recorded_size (int *,int) ;
 int insert_incomplete_children (int ,int ,char const*,scalar_t__,int *,int ,int ,int ,int *) ;
 int kind_map ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int relpath_depth (char const*) ;
 int set_actual_props (TYPE_1__*,char const*,int *,int *) ;
 int * svn_error_createf (int ,int ,int ,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;
 int svn_prop_diffs (TYPE_3__**,int *,int *,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_sqlite__bind_checksum (int *,int,int ,int *) ;
 int svn_sqlite__bind_int (int *,int,int) ;
 int svn_sqlite__bind_int64 (int *,int,scalar_t__) ;
 int svn_sqlite__bind_iprops (int *,int,int ,int *) ;
 int svn_sqlite__bind_properties (int *,int,int *,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 scalar_t__ svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__insert (int *,int *) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;
 int svn_sqlite__step_done (int *) ;
 int * svn_token__to_word (int ,int ) ;
 int svn_wc__db_mark_conflict_internal (TYPE_1__*,char const*,scalar_t__,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
insert_base_node(const insert_base_baton_t *pibb,
                 svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 apr_pool_t *scratch_pool)
{
  apr_int64_t repos_id = pibb->repos_id;
  svn_sqlite__stmt_t *stmt;
  svn_filesize_t recorded_size = SVN_INVALID_FILESIZE;
  apr_int64_t recorded_time;
  svn_boolean_t present;



  const char *parent_relpath =
    (*local_relpath == '\0') ? ((void*)0)
    : svn_relpath_dirname(local_relpath, scratch_pool);

  if (pibb->repos_id == INVALID_REPOS_ID)
    SVN_ERR(create_repos_id(&repos_id, pibb->repos_root_url, pibb->repos_uuid,
                            wcroot->sdb, scratch_pool));

  SVN_ERR_ASSERT(repos_id != INVALID_REPOS_ID);
  SVN_ERR_ASSERT(pibb->repos_relpath != ((void*)0));

  if (pibb->keep_recorded_info)
    {
      svn_boolean_t have_row;
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_BASE_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      if (have_row)
        {

          recorded_size = get_recorded_size(stmt, 6);
          recorded_time = svn_sqlite__column_int64(stmt, 12);
        }
      SVN_ERR(svn_sqlite__reset(stmt));
    }

  present = (pibb->status == svn_wc__db_status_normal
             || pibb->status == svn_wc__db_status_incomplete);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb, STMT_INSERT_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isdsisr"
                            "tstr"
                            "isnnnnns",
                            wcroot->wc_id,
                            local_relpath,
                            0,
                            parent_relpath,
                            repos_id,
                            pibb->repos_relpath,
                            pibb->revision,
                            presence_map, pibb->status,
                            (pibb->kind == svn_node_dir && present)
                              ? svn_token__to_word(depth_map, pibb->depth)
                              : ((void*)0),
                            kind_map, pibb->kind,
                            pibb->changed_rev,
                            pibb->changed_date,
                            pibb->changed_author,
                            (pibb->kind == svn_node_symlink && present) ?
                                pibb->target : ((void*)0)));
  if (pibb->kind == svn_node_file && present)
    {
      if (!pibb->checksum
          && pibb->status != svn_wc__db_status_not_present
          && pibb->status != svn_wc__db_status_excluded
          && pibb->status != svn_wc__db_status_server_excluded)
        return svn_error_createf(SVN_ERR_WC_CORRUPT, svn_sqlite__reset(stmt),
                                 _("The file '%s' has no checksum."),
                                 path_for_error_message(wcroot, local_relpath,
                                                        scratch_pool));

      SVN_ERR(svn_sqlite__bind_checksum(stmt, 14, pibb->checksum,
                                        scratch_pool));

      if (recorded_size != SVN_INVALID_FILESIZE)
        {
          SVN_ERR(svn_sqlite__bind_int64(stmt, 16, recorded_size));
          SVN_ERR(svn_sqlite__bind_int64(stmt, 17, recorded_time));
        }
    }


  assert(pibb->status == svn_wc__db_status_normal
         || pibb->status == svn_wc__db_status_incomplete
         || pibb->props == ((void*)0));
  if (present)
    {
      SVN_ERR(svn_sqlite__bind_properties(stmt, 15, pibb->props,
                                          scratch_pool));

      SVN_ERR(svn_sqlite__bind_iprops(stmt, 23, pibb->iprops,
                                      scratch_pool));
    }

  if (pibb->dav_cache)
    SVN_ERR(svn_sqlite__bind_properties(stmt, 18, pibb->dav_cache,
                                        scratch_pool));

  if (pibb->file_external)
    SVN_ERR(svn_sqlite__bind_int(stmt, 20, 1));

  SVN_ERR(svn_sqlite__insert(((void*)0), stmt));

  if (pibb->update_actual_props)
    {

      apr_hash_t *base_props = (apr_hash_t *)pibb->props;
      apr_hash_t *new_actual_props = (apr_hash_t *)pibb->new_actual_props;

      if (base_props != ((void*)0)
          && new_actual_props != ((void*)0)
          && (apr_hash_count(base_props) == apr_hash_count(new_actual_props)))
        {
          apr_array_header_t *diffs;

          SVN_ERR(svn_prop_diffs(&diffs, new_actual_props, base_props,
                                 scratch_pool));

          if (diffs->nelts == 0)
            new_actual_props = ((void*)0);
        }

      SVN_ERR(set_actual_props(wcroot, local_relpath, new_actual_props,
                               scratch_pool));
    }

  if (pibb->kind == svn_node_dir && pibb->children)
    SVN_ERR(insert_incomplete_children(wcroot->sdb, wcroot->wc_id,
                                       local_relpath,
                                       repos_id,
                                       pibb->repos_relpath,
                                       pibb->revision,
                                       pibb->children,
                                       0 ,
                                       scratch_pool));


  if (*local_relpath)
    {
      if (parent_relpath
          && ((pibb->status == svn_wc__db_status_normal)
              || (pibb->status == svn_wc__db_status_incomplete))
          && ! pibb->file_external)
        {
          SVN_ERR(db_extend_parent_delete(wcroot, local_relpath,
                                          pibb->kind, 0,
                                          scratch_pool));
        }
      else if (pibb->status == svn_wc__db_status_not_present
               || pibb->status == svn_wc__db_status_server_excluded
               || pibb->status == svn_wc__db_status_excluded)
        {
          SVN_ERR(db_retract_parent_delete(wcroot, local_relpath, 0,
                                           scratch_pool));
        }
    }

  if (pibb->delete_working)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_WORKING_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }
  if (pibb->insert_base_deleted)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_INSERT_DELETE_FROM_BASE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd",
                                wcroot->wc_id, local_relpath,
                                relpath_depth(local_relpath)));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }

  SVN_ERR(add_work_items(wcroot->sdb, pibb->work_items, scratch_pool));
  if (pibb->conflict)
    SVN_ERR(svn_wc__db_mark_conflict_internal(wcroot, local_relpath,
                                              pibb->conflict, scratch_pool));

  return SVN_NO_ERROR;
}
