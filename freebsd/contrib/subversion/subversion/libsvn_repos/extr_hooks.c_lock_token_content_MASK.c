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
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC11(apr_file_t **handle, apr_hash_t *lock_tokens,
                   apr_pool_t *pool)
{
  svn_stringbuf_t *lock_str = FUNC9("LOCK-TOKENS:\n", pool);
  apr_hash_index_t *hi;

  for (hi = FUNC0(pool, lock_tokens); hi;
       hi = FUNC1(hi))
    {
      const char *token = FUNC2(hi);
      const char *path = FUNC3(hi);

      if (path == (const char *) 1)
        {
          /* Special handling for svn_fs_access_t * created by using deprecated
             svn_fs_access_add_lock_token() function. */
          path = "";
        }
      else
        {
          path = FUNC5(path, pool);
        }

      FUNC8(lock_str,
          FUNC10(pool, "%s|%s\n", path, token));
    }

  FUNC7(lock_str, "\n");
  return FUNC4(handle,
                          FUNC6(lock_str), pool);
}