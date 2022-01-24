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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct summarize_baton_t* baton; } ;
struct summarize_baton_t {int dummy; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct summarize_baton_t*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_client_diff_summarize_kind_added ; 
 int /*<<< orphan*/  svn_node_file ; 

__attribute__((used)) static svn_error_t *
FUNC3(const char *relpath,
                const svn_diff_source_t *copyfrom_source,
                const svn_diff_source_t *right_source,
                const char *copyfrom_file,
                const char *right_file,
                /*const*/ apr_hash_t *copyfrom_props,
                /*const*/ apr_hash_t *right_props,
                void *file_baton,
                const struct svn_diff_tree_processor_t *processor,
                apr_pool_t *scratch_pool)
{
  struct summarize_baton_t *b = processor->baton;

  FUNC0(FUNC2(b, relpath, svn_client_diff_summarize_kind_added,
                       FUNC1(right_props, scratch_pool),
                       svn_node_file, scratch_pool));

  return SVN_NO_ERROR;
}