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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(serf_bucket_t **body_bkt,
                    void *baton,
                    serf_bucket_alloc_t *alloc,
                    apr_pool_t *pool /* request pool */,
                    apr_pool_t *scratch_pool)
{
  serf_bucket_t *buckets;

  buckets = FUNC0(alloc);

  FUNC4(buckets, alloc);
  FUNC3(buckets, alloc, "propfind",
                                    "xmlns", "DAV:",
                                    SVN_VA_NULL);
  FUNC3(buckets, alloc, "prop", SVN_VA_NULL);
  FUNC2(buckets, alloc,
                                     "lockdiscovery", SVN_VA_NULL);
  FUNC1(buckets, alloc, "prop");
  FUNC1(buckets, alloc, "propfind");

  *body_bkt = buckets;
  return SVN_NO_ERROR;
}