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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_mergeinfo_receiver_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct get_mergeinfo_data_and_entries_baton {char const* node_path; void* receiver_baton; int /*<<< orphan*/  receiver; int /*<<< orphan*/ * node; int /*<<< orphan*/ * children_atop_mergeinfo_trees; } ;
typedef  int /*<<< orphan*/  dag_node_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct get_mergeinfo_data_and_entries_baton*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,void const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txn_body_get_mergeinfo_data_and_entries ; 

__attribute__((used)) static svn_error_t *
FUNC11(svn_fs_t *fs,
                              dag_node_t *node,
                              const char *node_path,
                              svn_fs_mergeinfo_receiver_t receiver,
                              void *baton,
                              apr_pool_t *pool)
{
  struct get_mergeinfo_data_and_entries_baton gmdae_args;
  apr_hash_t *children_atop_mergeinfo_trees = FUNC3(pool);
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;

  /* Add mergeinfo for immediate children that have it, and fetch
     immediate children that *don't* have it but sit atop trees that do. */
  gmdae_args.children_atop_mergeinfo_trees = children_atop_mergeinfo_trees;
  gmdae_args.node = node;
  gmdae_args.node_path = node_path;
  gmdae_args.receiver = receiver;
  gmdae_args.receiver_baton = baton;
  FUNC0(FUNC6(fs, txn_body_get_mergeinfo_data_and_entries,
                                 &gmdae_args, FALSE, pool));

  /* If no children sit atop trees with mergeinfo, we're done.
     Otherwise, recurse on those children. */

  if (FUNC1(children_atop_mergeinfo_trees) == 0)
    return SVN_NO_ERROR;

  iterpool = FUNC9(pool);
  for (hi = FUNC2(pool, children_atop_mergeinfo_trees);
       hi;
       hi = FUNC4(hi))
    {
      const void *key;
      void *val;
      FUNC8(iterpool);
      FUNC5(hi, &key, NULL, &val);
      FUNC0(FUNC11(fs, val,
                                            FUNC7(node_path, key,
                                                             iterpool),
                                            receiver, baton, iterpool));
    }
  FUNC10(iterpool);
  return SVN_NO_ERROR;
}