#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  sdb; int /*<<< orphan*/  wc_id; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  int /*<<< orphan*/  svn_sqlite__stmt_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_13__ {scalar_t__ repos_id; scalar_t__ status; scalar_t__ kind; scalar_t__ conflict; int /*<<< orphan*/  work_items; scalar_t__ insert_base_deleted; scalar_t__ delete_working; scalar_t__ file_external; int /*<<< orphan*/  children; int /*<<< orphan*/  revision; int /*<<< orphan*/ * repos_relpath; scalar_t__ new_actual_props; int /*<<< orphan*/ * props; scalar_t__ update_actual_props; int /*<<< orphan*/ * dav_cache; int /*<<< orphan*/  iprops; int /*<<< orphan*/  checksum; int /*<<< orphan*/ * target; int /*<<< orphan*/  changed_author; int /*<<< orphan*/  changed_date; int /*<<< orphan*/  changed_rev; int /*<<< orphan*/  depth; scalar_t__ keep_recorded_info; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; } ;
typedef  TYPE_2__ insert_base_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_14__ {scalar_t__ nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;

/* Variables and functions */
 scalar_t__ INVALID_REPOS_ID ; 
 int /*<<< orphan*/  STMT_DELETE_WORKING_NODE ; 
 int /*<<< orphan*/  STMT_INSERT_DELETE_FROM_BASE ; 
 int /*<<< orphan*/  STMT_INSERT_NODE ; 
 int /*<<< orphan*/  STMT_SELECT_BASE_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 scalar_t__ SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  depth_map ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kind_map ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  presence_map ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_symlink ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC16 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC31(const insert_base_baton_t *pibb,
                 svn_wc__db_wcroot_t *wcroot,
                 const char *local_relpath,
                 apr_pool_t *scratch_pool)
{
  apr_int64_t repos_id = pibb->repos_id;
  svn_sqlite__stmt_t *stmt;
  svn_filesize_t recorded_size = SVN_INVALID_FILESIZE;
  apr_int64_t recorded_time;
  svn_boolean_t present;

  /* The directory at the WCROOT has a NULL parent_relpath. Otherwise,
     bind the appropriate parent_relpath. */
  const char *parent_relpath =
    (*local_relpath == '\0') ? NULL
    : FUNC16(local_relpath, scratch_pool);

  if (pibb->repos_id == INVALID_REPOS_ID)
    FUNC0(FUNC6(&repos_id, pibb->repos_root_url, pibb->repos_uuid,
                            wcroot->sdb, scratch_pool));

  FUNC1(repos_id != INVALID_REPOS_ID);
  FUNC1(pibb->repos_relpath != NULL);

  if (pibb->keep_recorded_info)
    {
      svn_boolean_t have_row;
      FUNC0(FUNC24(&stmt, wcroot->sdb,
                                        STMT_SELECT_BASE_NODE));
      FUNC0(FUNC22(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC27(&have_row, stmt));
      if (have_row)
        {
          /* Preserve size and modification time if caller asked us to. */
          recorded_size = FUNC9(stmt, 6);
          recorded_time = FUNC23(stmt, 12);
        }
      FUNC0(FUNC26(stmt));
    }

  present = (pibb->status == svn_wc__db_status_normal
             || pibb->status == svn_wc__db_status_incomplete);

  FUNC0(FUNC24(&stmt, wcroot->sdb, STMT_INSERT_NODE));
  FUNC0(FUNC22(stmt, "isdsisr"
                            "tstr"               /* 8 - 11 */
                            "isnnnnns",          /* 12 - 19 */
                            wcroot->wc_id,       /* 1 */
                            local_relpath,       /* 2 */
                            0,              /* op_depth is 0 for base */
                            parent_relpath,      /* 4 */
                            repos_id,
                            pibb->repos_relpath,
                            pibb->revision,
                            presence_map, pibb->status, /* 8 */
                            (pibb->kind == svn_node_dir && present) /* 9 */
                              ? FUNC29(depth_map, pibb->depth)
                              : NULL,
                            kind_map, pibb->kind, /* 10 */
                            pibb->changed_rev,    /* 11 */
                            pibb->changed_date,   /* 12 */
                            pibb->changed_author, /* 13 */
                            (pibb->kind == svn_node_symlink && present) ?
                                pibb->target : NULL)); /* 19 */
  if (pibb->kind == svn_node_file && present)
    {
      if (!pibb->checksum
          && pibb->status != svn_wc__db_status_not_present
          && pibb->status != svn_wc__db_status_excluded
          && pibb->status != svn_wc__db_status_server_excluded)
        return FUNC14(SVN_ERR_WC_CORRUPT, FUNC26(stmt),
                                 FUNC2("The file '%s' has no checksum."),
                                 FUNC11(wcroot, local_relpath,
                                                        scratch_pool));

      FUNC0(FUNC17(stmt, 14, pibb->checksum,
                                        scratch_pool));

      if (recorded_size != SVN_INVALID_FILESIZE)
        {
          FUNC0(FUNC19(stmt, 16, recorded_size));
          FUNC0(FUNC19(stmt, 17, recorded_time));
        }
    }

  /* Set properties.  Must be null if presence not normal or incomplete. */
  FUNC5(pibb->status == svn_wc__db_status_normal
         || pibb->status == svn_wc__db_status_incomplete
         || pibb->props == NULL);
  if (present)
    {
      FUNC0(FUNC21(stmt, 15, pibb->props,
                                          scratch_pool));

      FUNC0(FUNC20(stmt, 23, pibb->iprops,
                                      scratch_pool));
    }

  if (pibb->dav_cache)
    FUNC0(FUNC21(stmt, 18, pibb->dav_cache,
                                        scratch_pool));

  if (pibb->file_external)
    FUNC0(FUNC18(stmt, 20, 1));

  FUNC0(FUNC25(NULL, stmt));

  if (pibb->update_actual_props)
    {
      /* Cast away const, to allow calling property helpers */
      apr_hash_t *base_props = (apr_hash_t *)pibb->props;
      apr_hash_t *new_actual_props = (apr_hash_t *)pibb->new_actual_props;

      if (base_props != NULL
          && new_actual_props != NULL
          && (FUNC4(base_props) == FUNC4(new_actual_props)))
        {
          apr_array_header_t *diffs;

          FUNC0(FUNC15(&diffs, new_actual_props, base_props,
                                 scratch_pool));

          if (diffs->nelts == 0)
            new_actual_props = NULL;
        }

      FUNC0(FUNC13(wcroot, local_relpath, new_actual_props,
                               scratch_pool));
    }

  if (pibb->kind == svn_node_dir && pibb->children)
    FUNC0(FUNC10(wcroot->sdb, wcroot->wc_id,
                                       local_relpath,
                                       repos_id,
                                       pibb->repos_relpath,
                                       pibb->revision,
                                       pibb->children,
                                       0 /* BASE */,
                                       scratch_pool));

  /* When this is not the root node, check shadowing behavior */
  if (*local_relpath)
    {
      if (parent_relpath
          && ((pibb->status == svn_wc__db_status_normal)
              || (pibb->status == svn_wc__db_status_incomplete))
          && ! pibb->file_external)
        {
          FUNC0(FUNC7(wcroot, local_relpath,
                                          pibb->kind, 0,
                                          scratch_pool));
        }
      else if (pibb->status == svn_wc__db_status_not_present
               || pibb->status == svn_wc__db_status_server_excluded
               || pibb->status == svn_wc__db_status_excluded)
        {
          FUNC0(FUNC8(wcroot, local_relpath, 0,
                                           scratch_pool));
        }
    }

  if (pibb->delete_working)
    {
      FUNC0(FUNC24(&stmt, wcroot->sdb,
                                    STMT_DELETE_WORKING_NODE));
      FUNC0(FUNC22(stmt, "is", wcroot->wc_id, local_relpath));
      FUNC0(FUNC28(stmt));
    }
  if (pibb->insert_base_deleted)
    {
      FUNC0(FUNC24(&stmt, wcroot->sdb,
                                        STMT_INSERT_DELETE_FROM_BASE));
      FUNC0(FUNC22(stmt, "isd",
                                wcroot->wc_id, local_relpath,
                                FUNC12(local_relpath)));
      FUNC0(FUNC28(stmt));
    }

  FUNC0(FUNC3(wcroot->sdb, pibb->work_items, scratch_pool));
  if (pibb->conflict)
    FUNC0(FUNC30(wcroot, local_relpath,
                                              pibb->conflict, scratch_pool));

  return SVN_NO_ERROR;
}