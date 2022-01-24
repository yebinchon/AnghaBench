#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  svn_client_list_func2_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_9__ {int /*<<< orphan*/  nelts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(apr_hash_t *externals,
               const apr_array_header_t *patterns,
               svn_depth_t depth,
               apr_uint32_t dirent_fields,
               svn_boolean_t fetch_locks,
               svn_client_list_func2_t list_func,
               void *baton,
               svn_client_ctx_t *ctx,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC7(scratch_pool);
  apr_hash_index_t *hi;

  for (hi = FUNC1(scratch_pool, externals);
       hi;
       hi = FUNC2(hi))
    {
      const char *externals_parent_url = FUNC3(hi);
      svn_string_t *externals_desc = FUNC4(hi);
      apr_array_header_t *external_items;

      FUNC6(iterpool);

      FUNC0(FUNC9(&external_items,
                                                  externals_parent_url,
                                                  externals_desc->data,
                                                  FALSE, iterpool));

      if (! external_items->nelts)
        continue;

      FUNC0(FUNC5(external_items, externals_parent_url,
                                  patterns, depth, dirent_fields,
                                  fetch_locks, list_func, baton, ctx,
                                  iterpool));

    }
  FUNC8(iterpool);

  return SVN_NO_ERROR;
}