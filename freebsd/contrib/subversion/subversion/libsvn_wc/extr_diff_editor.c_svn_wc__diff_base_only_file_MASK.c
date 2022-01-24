#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* file_deleted ) (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* file_opened ) (void**,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (void**,scalar_t__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,void*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_normal ; 

svn_error_t *
FUNC8(svn_wc__db_t *db,
                            const char *local_abspath,
                            const char *relpath,
                            svn_revnum_t revision,
                            const svn_diff_tree_processor_t *processor,
                            void *processor_parent_baton,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const svn_checksum_t *checksum;
  apr_hash_t *props;
  void *file_baton = NULL;
  svn_boolean_t skip = FALSE;
  svn_diff_source_t *left_src;
  const char *pristine_file;

  FUNC0(FUNC6(&status, &kind,
                                   FUNC2(revision)
                                        ? NULL : &revision,
                                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                   &checksum, NULL, NULL, NULL, &props, NULL,
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

  FUNC1(status == svn_wc__db_status_normal
                 && kind == svn_node_file
                 && checksum);

  left_src = FUNC5(revision, scratch_pool);

  FUNC0(processor->file_opened(&file_baton, &skip,
                                 relpath,
                                 left_src,
                                 NULL /* right_src */,
                                 NULL /* copyfrom_source */,
                                 processor_parent_baton,
                                 processor,
                                 scratch_pool, scratch_pool));

  if (skip)
    return SVN_NO_ERROR;

  FUNC0(FUNC7(&pristine_file,
                                       db, local_abspath, checksum,
                                       scratch_pool, scratch_pool));

  FUNC0(processor->file_deleted(relpath,
                                  left_src,
                                  pristine_file,
                                  props,
                                  file_baton,
                                  processor,
                                  scratch_pool));

  return SVN_NO_ERROR;
}