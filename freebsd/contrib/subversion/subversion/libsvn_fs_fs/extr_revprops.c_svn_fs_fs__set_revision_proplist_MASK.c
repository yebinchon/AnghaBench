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
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_fs_t *fs,
                                 svn_revnum_t rev,
                                 apr_hash_t *proplist,
                                 apr_pool_t *pool)
{
  svn_boolean_t is_packed;
  const char *final_path;
  const char *tmp_path;
  const char *perms_reference;
  apr_array_header_t *files_to_delete = NULL;

  FUNC0(FUNC1(rev, fs, pool));

  /* this info will not change while we hold the global FS write lock */
  is_packed = FUNC2(fs, rev);

  /* Serialize the new revprop data */
  if (is_packed)
    FUNC0(FUNC7(&final_path, &tmp_path, &files_to_delete,
                                 fs, rev, proplist, pool));
  else
    FUNC0(FUNC6(&final_path, &tmp_path,
                                     fs, rev, proplist, pool));

  /* Previous cache contents is invalid now. */
  FUNC4(fs);

  /* We use the rev file of this revision as the perms reference,
   * because when setting revprops for the first time, the revprop
   * file won't exist and therefore can't serve as its own reference.
   * (Whereas the rev file should already exist at this point.)
   */
  perms_reference = FUNC3(fs, rev, pool);

  /* Now, switch to the new revprop data. */
  FUNC0(FUNC5(fs, final_path, tmp_path, perms_reference,
                                files_to_delete, pool));

  return SVN_NO_ERROR;
}