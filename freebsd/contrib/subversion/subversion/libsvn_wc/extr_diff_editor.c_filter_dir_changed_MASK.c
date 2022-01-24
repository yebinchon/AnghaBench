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
struct filter_tree_baton_t {TYPE_1__* processor; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* dir_closed ) (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void*,TYPE_1__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(const char *relpath,
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

  FUNC0(fb->processor->dir_closed(relpath,
                                    left_source,
                                    right_source,
                                    dir_baton,
                                    fb->processor,
                                    scratch_pool));
  return SVN_NO_ERROR;
}