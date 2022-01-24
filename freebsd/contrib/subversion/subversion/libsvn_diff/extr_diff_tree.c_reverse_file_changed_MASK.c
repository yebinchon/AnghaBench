#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_4__ {struct reverse_tree_baton_t* baton; } ;
typedef  TYPE_1__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct reverse_tree_baton_t {TYPE_2__* processor; scalar_t__ prefix_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* file_changed ) (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *relpath,
                     const svn_diff_source_t *left_source,
                     const svn_diff_source_t *right_source,
                     const char *left_file,
                     const char *right_file,
                     /*const*/ apr_hash_t *left_props,
                     /*const*/ apr_hash_t *right_props,
                     svn_boolean_t file_modified,
                     const apr_array_header_t *prop_changes,
                     void *file_baton,
                     const svn_diff_tree_processor_t *processor,
                     apr_pool_t *scratch_pool)
{
  struct reverse_tree_baton_t *rb = processor->baton;
  apr_array_header_t *reversed_prop_changes = NULL;

  if (rb->prefix_relpath)
    relpath = FUNC4(rb->prefix_relpath, relpath, scratch_pool);

  if (prop_changes)
    {
      FUNC1(left_props != NULL && right_props != NULL);
      FUNC0(FUNC3(&reversed_prop_changes, left_props, right_props,
                             scratch_pool));
    }

  FUNC0(rb->processor->file_changed(relpath,
                                      right_source,
                                      left_source,
                                      right_file,
                                      left_file,
                                      right_props,
                                      left_props,
                                      file_modified,
                                      reversed_prop_changes,
                                      file_baton,
                                      rb->processor,
                                      scratch_pool));
  return SVN_NO_ERROR;
}