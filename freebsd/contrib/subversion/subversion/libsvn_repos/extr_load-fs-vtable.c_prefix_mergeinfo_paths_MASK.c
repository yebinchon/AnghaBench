#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_rangelist_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC12(svn_string_t **mergeinfo_val,
                       const svn_string_t *mergeinfo_orig,
                       const char *parent_dir,
                       apr_pool_t *pool)
{
  apr_hash_t *prefixed_mergeinfo, *mergeinfo;
  apr_hash_index_t *hi;

  FUNC0(FUNC8(&mergeinfo, mergeinfo_orig->data, pool));
  prefixed_mergeinfo = FUNC2(pool);
  for (hi = FUNC1(pool, mergeinfo); hi; hi = FUNC3(hi))
    {
      const char *merge_source = FUNC4(hi);
      svn_rangelist_t *rangelist = FUNC5(hi);
      const char *path;

      merge_source = FUNC10(merge_source, pool);

      /* The svn:mergeinfo property syntax demands a repos abspath */
      path = FUNC6(FUNC11(parent_dir,
                                                       merge_source, pool),
                                      pool);
      FUNC7(prefixed_mergeinfo, path, rangelist);
    }
  return FUNC9(mergeinfo_val, prefixed_mergeinfo, pool);
}