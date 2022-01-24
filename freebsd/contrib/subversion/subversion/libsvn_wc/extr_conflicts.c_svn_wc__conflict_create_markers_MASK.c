#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_10__ {TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__CONFLICT_KIND_PROP ; 
 int /*<<< orphan*/  SVN_WC__PROP_REJ_EXT ; 
 char* SVN_WC__THIS_DIR_PREJ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(svn_skel_t **work_items,
                                svn_wc__db_t *db,
                                const char *local_abspath,
                                svn_skel_t *conflict_skel,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  svn_boolean_t prop_conflicted;
  svn_wc_operation_t operation;
  *work_items = NULL;

  FUNC0(FUNC6(&operation, NULL,
                                     NULL, &prop_conflicted, NULL,
                                     db, local_abspath,
                                     conflict_skel,
                                     scratch_pool, scratch_pool));

  if (prop_conflicted)
    {
      const char *marker_abspath = NULL;
      svn_node_kind_t kind;
      const char *marker_dir;
      const char *marker_name;
      const char *marker_relpath;

      /* Ok, currently we have to do a few things for property conflicts:
         - Create a marker file
         - Store the name in the conflict_skel
         - Create a WQ item that fills the marker with the expected data */

      FUNC0(FUNC3(local_abspath, &kind, scratch_pool));

      if (kind == svn_node_dir)
        {
          marker_dir = local_abspath;
          marker_name = SVN_WC__THIS_DIR_PREJ;
        }
      else
        FUNC2(&marker_dir, &marker_name, local_abspath,
                         scratch_pool);

      FUNC0(FUNC4(NULL, &marker_abspath,
                                         marker_dir,
                                         marker_name,
                                         SVN_WC__PROP_REJ_EXT,
                                         svn_io_file_del_none,
                                         scratch_pool, scratch_pool));

      FUNC0(FUNC7(&marker_relpath, db, local_abspath,
                                    marker_abspath, result_pool, result_pool));

      /* And store the marker in the skel */
      {
        svn_skel_t *prop_conflict;
        FUNC0(FUNC1(&prop_conflict, conflict_skel,
                                       SVN_WC__CONFLICT_KIND_PROP));

        FUNC5(marker_relpath, prop_conflict->children->next,
                            result_pool);
      }
      FUNC0(FUNC8(work_items,
                                            db, local_abspath,
                                            scratch_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}