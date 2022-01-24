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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct revision_proplist_args {int /*<<< orphan*/  rev; int /*<<< orphan*/ ** table_p; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct revision_proplist_args*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  txn_body_revision_proplist ; 

svn_error_t *
FUNC4(svn_string_t **value_p,
                           svn_fs_t *fs,
                           svn_revnum_t rev,
                           const char *propname,
                           svn_boolean_t refresh,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  struct revision_proplist_args args;
  apr_hash_t *table;

  FUNC0(FUNC1(fs, TRUE));

  /* Get the proplist. */
  args.table_p = &table;
  args.rev = rev;
  FUNC0(FUNC2(fs, txn_body_revision_proplist, &args,
                                 FALSE, result_pool));

  /* And then the prop from that list (if there was a list). */
  *value_p = FUNC3(table, propname);

  return SVN_NO_ERROR;
}