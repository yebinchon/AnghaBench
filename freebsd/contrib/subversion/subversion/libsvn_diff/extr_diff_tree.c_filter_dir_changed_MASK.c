#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct filter_tree_baton_t* baton; } ;
struct filter_tree_baton_t {TYPE_1__* processor; int /*<<< orphan*/  prefix_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* dir_changed ) (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,TYPE_1__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char *relpath,
                   const svn_diff_source_t *left_source,
                   const svn_diff_source_t *right_source,
                   /*const*/ apr_hash_t *left_props,
                   /*const*/ apr_hash_t *right_props,
                   const apr_array_header_t *prop_changes,
                   void *dir_baton,
                   const struct svn_diff_tree_processor_t *processor,
                   apr_pool_t *scratch_pool)
{
  struct filter_tree_baton_t *fb = processor->baton;

  relpath = FUNC3(fb->prefix_relpath, relpath);
  FUNC1(relpath != NULL); /* Driver error */

  FUNC0(fb->processor->dir_changed(relpath,
                                     left_source,
                                     right_source,
                                     left_props,
                                     right_props,
                                     prop_changes,
                                     dir_baton,
                                     fb->processor,
                                     scratch_pool));
  return SVN_NO_ERROR;
}