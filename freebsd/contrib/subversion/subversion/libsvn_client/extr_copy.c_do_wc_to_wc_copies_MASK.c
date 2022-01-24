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
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_9__ {int nelts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__ const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_boolean_t *timestamp_sleep,
                   const apr_array_header_t *copy_pairs,
                   svn_boolean_t metadata_only,
                   svn_boolean_t pin_externals,
                   const apr_hash_t *externals_to_pin,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  const char *dst_parent, *dst_parent_abspath;

  FUNC0(FUNC3(copy_pairs, NULL, &dst_parent, NULL, pool));
  if (copy_pairs->nelts == 1)
    dst_parent = FUNC4(dst_parent, pool);

  FUNC0(FUNC5(&dst_parent_abspath, dst_parent, pool));

  FUNC1(
    FUNC2(timestamp_sleep, copy_pairs, dst_parent,
                                       metadata_only, pin_externals,
                                       externals_to_pin, ctx, pool),
    ctx->wc_ctx, dst_parent_abspath, FALSE, pool);

  return SVN_NO_ERROR;
}