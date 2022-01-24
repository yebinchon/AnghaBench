#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_2__ {int /*<<< orphan*/  relpath; int /*<<< orphan*/  commit_ctx; scalar_t__ result_checksum; scalar_t__ base_checksum; int /*<<< orphan*/  base_revision; } ;
typedef  TYPE_1__ file_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * APR_SUCCESS ; 
 int /*<<< orphan*/  SVN_DAV_BASE_FULLTEXT_MD5_HEADER ; 
 int /*<<< orphan*/  SVN_DAV_RESULT_FULLTEXT_MD5_HEADER ; 
 int /*<<< orphan*/  SVN_DAV_VERSION_NAME_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC5(serf_bucket_t *headers,
                  void *baton,
                  apr_pool_t *pool /* request pool */,
                  apr_pool_t *scratch_pool)
{
  file_context_t *ctx = baton;

  if (FUNC1(ctx->base_revision))
    {
      FUNC4(headers, SVN_DAV_VERSION_NAME_HEADER,
                              FUNC2(pool, "%ld", ctx->base_revision));
    }

  if (ctx->base_checksum)
    {
      FUNC4(headers, SVN_DAV_BASE_FULLTEXT_MD5_HEADER,
                              ctx->base_checksum);
    }

  if (ctx->result_checksum)
    {
      FUNC4(headers, SVN_DAV_RESULT_FULLTEXT_MD5_HEADER,
                              ctx->result_checksum);
    }

  FUNC0(FUNC3(headers, ctx->commit_ctx,
                                      ctx->relpath, pool));

  return APR_SUCCESS;
}