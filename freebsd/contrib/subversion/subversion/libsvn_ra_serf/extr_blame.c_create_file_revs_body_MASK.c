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
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
struct TYPE_2__ {int /*<<< orphan*/  path; scalar_t__ include_merged_revisions; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ blame_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  SVN_XML_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(serf_bucket_t **body_bkt,
                      void *baton,
                      serf_bucket_alloc_t *alloc,
                      apr_pool_t *pool /* request pool */,
                      apr_pool_t *scratch_pool)
{
  serf_bucket_t *buckets;
  blame_context_t *blame_ctx = baton;

  buckets = FUNC1(alloc);

  FUNC4(buckets, alloc,
                                    "S:file-revs-report",
                                    "xmlns:S", SVN_XML_NAMESPACE,
                                    SVN_VA_NULL);

  FUNC5(buckets,
                               "S:start-revision", FUNC0(pool, blame_ctx->start),
                               alloc);

  FUNC5(buckets,
                               "S:end-revision", FUNC0(pool, blame_ctx->end),
                               alloc);

  if (blame_ctx->include_merged_revisions)
    {
      FUNC3(buckets, alloc,
                                         "S:include-merged-revisions", SVN_VA_NULL);
    }

  FUNC5(buckets,
                               "S:path", blame_ctx->path,
                               alloc);

  FUNC2(buckets, alloc,
                                     "S:file-revs-report");

  *body_bkt = buckets;
  return SVN_NO_ERROR;
}