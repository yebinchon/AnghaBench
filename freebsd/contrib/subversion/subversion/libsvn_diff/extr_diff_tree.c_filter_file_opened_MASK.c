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
struct TYPE_4__ {struct filter_tree_baton_t* baton; } ;
typedef  TYPE_1__ svn_diff_tree_processor_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct filter_tree_baton_t {TYPE_2__* processor; int /*<<< orphan*/  prefix_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* file_opened ) (void**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,void*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(void **new_file_baton,
                   svn_boolean_t *skip,
                   const char *relpath,
                   const svn_diff_source_t *left_source,
                   const svn_diff_source_t *right_source,
                   const svn_diff_source_t *copyfrom_source,
                   void *dir_baton,
                   const svn_diff_tree_processor_t *processor,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  struct filter_tree_baton_t *fb = processor->baton;

  relpath = FUNC2(fb->prefix_relpath, relpath);

  if (! relpath)
    {
      *skip = TRUE;
      return SVN_NO_ERROR;
    }

  FUNC0(fb->processor->file_opened(new_file_baton,
                                     skip,
                                     relpath,
                                     left_source,
                                     right_source,
                                     copyfrom_source,
                                     dir_baton,
                                     fb->processor,
                                     result_pool,
                                     scratch_pool));
  return SVN_NO_ERROR;
}