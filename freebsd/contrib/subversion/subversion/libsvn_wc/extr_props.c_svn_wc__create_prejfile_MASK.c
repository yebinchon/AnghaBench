#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_18__ {struct TYPE_18__* next; TYPE_1__* children; } ;
typedef  TYPE_3__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_16__ {TYPE_3__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const**,TYPE_3__ const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const**,char const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_operation_merge ; 

svn_error_t *
FUNC19(const char **tmp_prejfile_abspath,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        const svn_skel_t *prop_conflict_data,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *tempdir_abspath;
  svn_stream_t *stream;
  const char *temp_abspath;
  apr_pool_t *iterpool = FUNC9(scratch_pool);
  const svn_skel_t *scan;

  FUNC0(FUNC18(&tempdir_abspath,
                                         db, local_abspath,
                                         iterpool, iterpool));

  FUNC0(FUNC12(&stream, &temp_abspath,
                                 tempdir_abspath, svn_io_file_del_none,
                                 scratch_pool, iterpool));

  if (prop_conflict_data)
    {
      for (scan = prop_conflict_data->children->next;
            scan != NULL; scan = scan->next)
        {
          const svn_string_t *conflict_desc;

          FUNC8(iterpool);

          FUNC0(FUNC5(&conflict_desc, scan,
                                          cancel_func, cancel_baton,
                                          iterpool, iterpool));

          FUNC0(FUNC13(stream, conflict_desc->data));
        }
    }
  else
    {
      svn_wc_operation_t operation;
      apr_hash_index_t *hi;
      apr_hash_t *old_props;
      apr_hash_t *mine_props;
      apr_hash_t *their_original_props;
      apr_hash_t *their_props;
      apr_hash_t *conflicted_props;
      svn_skel_t *conflicts;

      FUNC0(FUNC16(&conflicts, NULL, NULL,
                                       db, local_abspath,
                                      scratch_pool, scratch_pool));

      FUNC0(FUNC14(&operation, NULL, NULL, NULL, NULL,
                                         db, local_abspath,
                                         conflicts,
                                         scratch_pool, scratch_pool));

      FUNC0(FUNC15(NULL,
                                                  &mine_props,
                                                  &their_original_props,
                                                  &their_props,
                                                  &conflicted_props,
                                                  db, local_abspath,
                                                  conflicts,
                                                  scratch_pool,
                                                  scratch_pool));

      if (operation == svn_wc_operation_merge)
        FUNC0(FUNC17(&old_props, db, local_abspath,
                                                scratch_pool, scratch_pool));
      else
        old_props = their_original_props;

      /* ### TODO: Sort conflicts? */
      for (hi = FUNC1(scratch_pool, conflicted_props);
           hi;
           hi = FUNC2(hi))
        {
          const svn_string_t *conflict_desc;
          const char *propname = FUNC3(hi);
          const svn_string_t *old_value;
          const svn_string_t *mine_value;
          const svn_string_t *their_value;
          const svn_string_t *their_original_value;

          FUNC8(iterpool);

          old_value = old_props ? FUNC7(old_props, propname) : NULL;
          mine_value = mine_props ? FUNC7(mine_props, propname) : NULL;
          their_value = their_props ? FUNC7(their_props, propname)
                                    : NULL;
          their_original_value = their_original_props
                                    ? FUNC7(their_original_props, propname)
                                    : NULL;

          FUNC0(FUNC6(&conflict_desc,
                                    propname, old_value, mine_value,
                                    their_value, their_original_value,
                                    cancel_func, cancel_baton,
                                    iterpool, iterpool));

          FUNC0(FUNC13(stream, conflict_desc->data));
        }
    }

  FUNC0(FUNC11(stream));

  FUNC10(iterpool);

  *tmp_prejfile_abspath = FUNC4(result_pool, temp_abspath);
  return SVN_NO_ERROR;
}