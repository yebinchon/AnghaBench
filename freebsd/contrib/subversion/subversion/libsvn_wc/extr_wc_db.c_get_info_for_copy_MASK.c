#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const**,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const**,char const**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_int64_t *copyfrom_id,
                  const char **copyfrom_relpath,
                  svn_revnum_t *copyfrom_rev,
                  svn_wc__db_status_t *status,
                  svn_node_kind_t *kind,
                  svn_boolean_t *op_root,
                  svn_wc__db_wcroot_t *src_wcroot,
                  const char *local_relpath,
                  svn_wc__db_wcroot_t *dst_wcroot,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *repos_relpath;
  svn_revnum_t revision;
  svn_wc__db_status_t node_status;
  apr_int64_t repos_id;
  svn_boolean_t is_op_root;

  FUNC0(FUNC3(&node_status, kind, &revision, &repos_relpath, &repos_id,
                    NULL, NULL, NULL, NULL, NULL, NULL, copyfrom_relpath,
                    copyfrom_id, copyfrom_rev, NULL, NULL, NULL, NULL,
                    NULL, &is_op_root, NULL, NULL,
                    NULL /* have_base */,
                    NULL /* have_more_work */,
                    NULL /* have_work */,
                    src_wcroot, local_relpath, result_pool, scratch_pool));

  if (op_root)
    *op_root = is_op_root;

  if (node_status == svn_wc__db_status_excluded)
    {
      /* The parent cannot be excluded, so look at the parent and then
         adjust the relpath */
      const char *parent_relpath, *base_name;

      FUNC6(&parent_relpath, &base_name, local_relpath,
                       scratch_pool);
      FUNC0(FUNC12(copyfrom_id, copyfrom_relpath, copyfrom_rev,
                                NULL, NULL, NULL,
                                src_wcroot, parent_relpath, dst_wcroot,
                                scratch_pool, scratch_pool));
      if (*copyfrom_relpath)
        *copyfrom_relpath = FUNC8(*copyfrom_relpath, base_name,
                                             result_pool);
    }
  else if (node_status == svn_wc__db_status_added)
    {
      FUNC0(FUNC4(&node_status, NULL, NULL, NULL, NULL, NULL, NULL,
                            NULL, NULL, NULL, src_wcroot, local_relpath,
                            scratch_pool, scratch_pool));
    }
  else if (node_status == svn_wc__db_status_deleted && is_op_root)
    {
      const char *base_del_relpath, *work_del_relpath;

      FUNC0(FUNC5(&base_del_relpath, NULL,
                            &work_del_relpath,
                            NULL, src_wcroot, local_relpath,
                            scratch_pool, scratch_pool));
      if (work_del_relpath)
        {
          const char *op_root_relpath;
          const char *parent_del_relpath = FUNC7(work_del_relpath,
                                                               scratch_pool);

          /* Similar to, but not the same as, the _scan_addition and
             _join above.  Can we use get_copyfrom here? */
          FUNC0(FUNC4(NULL, &op_root_relpath,
                                NULL, NULL, /* repos_* */
                                copyfrom_relpath, copyfrom_id, copyfrom_rev,
                                NULL, NULL, NULL,
                                src_wcroot, parent_del_relpath,
                                scratch_pool, scratch_pool));
          *copyfrom_relpath
            = FUNC8(*copyfrom_relpath,
                               FUNC9(op_root_relpath,
                                                         local_relpath),
                               result_pool);
        }
      else if (base_del_relpath)
        {
          FUNC0(FUNC10(NULL, NULL, copyfrom_rev,
                                                    copyfrom_relpath,
                                                    copyfrom_id, NULL, NULL,
                                                    NULL, NULL, NULL, NULL,
                                                    NULL, NULL, NULL, NULL,
                                                    src_wcroot, local_relpath,
                                                    result_pool,
                                                    scratch_pool));
        }
      else
        FUNC1();
    }
  else if (node_status == svn_wc__db_status_deleted)
    {
      /* Keep original_* from read_info() to allow seeing the difference
         between base-deleted and not present */
    }
  else
    {
      *copyfrom_relpath = repos_relpath;
      *copyfrom_rev = revision;
      *copyfrom_id = repos_id;
    }

  if (status)
    *status = node_status;

  if (src_wcroot != dst_wcroot && *copyfrom_relpath)
    {
      const char *repos_root_url;
      const char *repos_uuid;

      /* Pass the right repos-id for the destination db. We can't just use
         the id of the source database, as this value can change after
         relocation (and perhaps also when we start storing multiple
         working copies in a single db)! */

      FUNC0(FUNC11(&repos_root_url, &repos_uuid,
                                          src_wcroot, *copyfrom_id,
                                          scratch_pool));

      FUNC0(FUNC2(copyfrom_id, repos_root_url, repos_uuid,
                              dst_wcroot->sdb, scratch_pool));
    }

  return SVN_NO_ERROR;
}