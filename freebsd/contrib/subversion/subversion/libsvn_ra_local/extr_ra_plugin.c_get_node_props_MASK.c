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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_COMMITTED_DATE ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_COMMITTED_REV ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_LAST_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_ENTRY_UUID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(apr_hash_t **props,
               svn_fs_root_t *root,
               const char *path,
               const char *uuid,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  svn_revnum_t cmt_rev;
  const char *cmt_date, *cmt_author;

  /* Create a hash with props attached to the fs node. */
  FUNC0(FUNC1(props, root, path, result_pool));

  /* Now add some non-tweakable metadata to the hash as well... */

  /* The so-called 'entryprops' with info about CR & friends. */
  FUNC0(FUNC3(&cmt_rev, &cmt_date,
                                       &cmt_author, root, path,
                                       scratch_pool));

  FUNC2(*props, SVN_PROP_ENTRY_COMMITTED_REV,
                FUNC5(result_pool, "%ld", cmt_rev));
  FUNC2(*props, SVN_PROP_ENTRY_COMMITTED_DATE, cmt_date ?
                FUNC4(cmt_date, result_pool) : NULL);
  FUNC2(*props, SVN_PROP_ENTRY_LAST_AUTHOR, cmt_author ?
                FUNC4(cmt_author, result_pool) : NULL);
  FUNC2(*props, SVN_PROP_ENTRY_UUID,
                FUNC4(uuid, result_pool));

  /* We have no 'wcprops' in ra_local, but might someday. */

  return SVN_NO_ERROR;
}