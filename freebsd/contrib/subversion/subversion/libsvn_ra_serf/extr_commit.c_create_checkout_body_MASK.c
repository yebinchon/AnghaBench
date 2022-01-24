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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(serf_bucket_t **bkt,
                     void *baton,
                     serf_bucket_alloc_t *alloc,
                     apr_pool_t *pool /* request pool */,
                     apr_pool_t *scratch_pool)
{
  const char *activity_url = baton;
  serf_bucket_t *body_bkt;

  body_bkt = FUNC1(alloc);

  FUNC7(body_bkt, alloc);
  FUNC6(body_bkt, alloc, "D:checkout",
                                    "xmlns:D", "DAV:",
                                    SVN_VA_NULL);
  FUNC6(body_bkt, alloc, "D:activity-set",
                                    SVN_VA_NULL);
  FUNC6(body_bkt, alloc, "D:href",
                                    SVN_VA_NULL);

  FUNC0(activity_url != NULL);
  FUNC3(body_bkt, alloc,
                                     activity_url,
                                     FUNC2(activity_url));

  FUNC4(body_bkt, alloc, "D:href");
  FUNC4(body_bkt, alloc, "D:activity-set");
  FUNC5(body_bkt, alloc,
                                     "D:apply-to-version", SVN_VA_NULL);
  FUNC4(body_bkt, alloc, "D:checkout");

  *bkt = body_bkt;
  return SVN_NO_ERROR;
}