#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOL_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 char const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC14(const char *old_mergeinfo_val,
                       const char *new_mergeinfo_val,
                       const char *encoding,
                       svn_stream_t *outstream,
                       apr_pool_t *pool)
{
  apr_hash_t *old_mergeinfo_hash, *new_mergeinfo_hash, *added, *deleted;
  apr_pool_t *iterpool = FUNC10(pool);
  apr_hash_index_t *hi;

  if (old_mergeinfo_val)
    FUNC0(FUNC8(&old_mergeinfo_hash, old_mergeinfo_val, pool));
  else
    old_mergeinfo_hash = NULL;

  if (new_mergeinfo_val)
    FUNC0(FUNC8(&new_mergeinfo_hash, new_mergeinfo_val, pool));
  else
    new_mergeinfo_hash = NULL;

  FUNC0(FUNC7(&deleted, &added, old_mergeinfo_hash,
                              new_mergeinfo_hash,
                              TRUE, pool, pool));

  /* Print a hint for 'svn patch' or smilar tools, indicating the
   * number of reverse-merges and forward-merges. */
  FUNC0(FUNC13(outstream, encoding, pool,
                                      "## -0,%u +0,%u ##%s",
                                      FUNC2(deleted),
                                      FUNC2(added),
                                      APR_EOL_STR));

  for (hi = FUNC3(pool, deleted);
       hi; hi = FUNC4(hi))
    {
      const char *from_path = FUNC5(hi);
      svn_rangelist_t *merge_revarray = FUNC6(hi);
      svn_string_t *merge_revstr;

      FUNC9(iterpool);
      FUNC0(FUNC12(&merge_revstr, merge_revarray,
                                      iterpool));

      FUNC0(FUNC13(outstream, encoding, iterpool,
                                          FUNC1("   Reverse-merged %s:r%s%s"),
                                          from_path, merge_revstr->data,
                                          APR_EOL_STR));
    }

  for (hi = FUNC3(pool, added);
       hi; hi = FUNC4(hi))
    {
      const char *from_path = FUNC5(hi);
      svn_rangelist_t *merge_revarray = FUNC6(hi);
      svn_string_t *merge_revstr;

      FUNC9(iterpool);
      FUNC0(FUNC12(&merge_revstr, merge_revarray,
                                      iterpool));

      FUNC0(FUNC13(outstream, encoding, iterpool,
                                          FUNC1("   Merged %s:r%s%s"),
                                          from_path, merge_revstr->data,
                                          APR_EOL_STR));
    }

  FUNC11(iterpool);
  return SVN_NO_ERROR;
}