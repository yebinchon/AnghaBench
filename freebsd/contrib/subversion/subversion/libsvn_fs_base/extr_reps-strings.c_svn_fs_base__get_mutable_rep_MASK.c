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
typedef  int /*<<< orphan*/  trail_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  representation_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const char **new_rep_key,
                             const char *rep_key,
                             svn_fs_t *fs,
                             const char *txn_id,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  representation_t *rep = NULL;
  const char *new_str = NULL;

  /* We were passed an existing REP_KEY, so examine it.  If it is
     mutable already, then just return REP_KEY as the mutable result
     key.  */
  if (rep_key && (rep_key[0] != '\0'))
    {
      FUNC0(FUNC4(&rep, fs, rep_key, trail, pool));
      if (FUNC2(rep, txn_id))
        {
          *new_rep_key = rep_key;
          return SVN_NO_ERROR;
        }
    }

  /* Either we weren't provided a base key to examine, or the base key
     we were provided was not mutable.  So, let's make a new
     representation and return its key to the caller. */
  FUNC0(FUNC5(fs, &new_str, 0, NULL, trail, pool));
  rep = FUNC1(new_str, txn_id,
                          FUNC3(svn_checksum_md5,
                                                      pool),
                          FUNC3(svn_checksum_sha1,
                                                      pool),
                          pool);
  return FUNC6(new_rep_key, fs, rep, trail, pool);
}