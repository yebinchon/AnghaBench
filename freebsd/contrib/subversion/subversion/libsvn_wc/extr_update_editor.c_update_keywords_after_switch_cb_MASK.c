#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct edit_baton {int /*<<< orphan*/  db; int /*<<< orphan*/  use_commit_times; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  cancel_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_KEYWORDS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(void *baton,
                                const char *local_abspath,
                                apr_hash_t *props,
                                apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  svn_string_t *propval;
  svn_boolean_t modified;
  svn_boolean_t record_fileinfo;
  svn_skel_t *work_items;
  const char *install_from;

  propval = FUNC1(props, SVN_PROP_KEYWORDS);
  if (!propval)
    return SVN_NO_ERROR;

  FUNC0(FUNC7(&modified, eb->db,
                                           local_abspath, FALSE,
                                           scratch_pool));
  if (modified)
    {
      const char *temp_dir_abspath;
      svn_stream_t *working_stream;
      svn_stream_t *install_from_stream;

      FUNC0(FUNC5(&temp_dir_abspath, eb->db,
                                             local_abspath, scratch_pool,
                                             scratch_pool));
      FUNC0(FUNC3(&working_stream, local_abspath,
                                       scratch_pool, scratch_pool));
      FUNC0(FUNC4(&install_from_stream, &install_from,
                                     temp_dir_abspath, svn_io_file_del_none,
                                     scratch_pool, scratch_pool));
      FUNC0(FUNC2(working_stream, install_from_stream,
                               eb->cancel_func, eb->cancel_baton,
                               scratch_pool));
      record_fileinfo = FALSE;
    }
  else
    {
      install_from = NULL;
      record_fileinfo = TRUE;
    }

  FUNC0(FUNC8(&work_items, eb->db, local_abspath,
                                        install_from,
                                        eb->use_commit_times,
                                        record_fileinfo,
                                        scratch_pool, scratch_pool));
  if (install_from)
    {
      svn_skel_t *work_item;

      FUNC0(FUNC9(&work_item, eb->db,
                                           local_abspath, install_from,
                                           scratch_pool, scratch_pool));
      work_items = FUNC10(work_items, work_item, scratch_pool);
    }

  FUNC0(FUNC6(eb->db, local_abspath, work_items,
                            scratch_pool));

  return SVN_NO_ERROR;
}