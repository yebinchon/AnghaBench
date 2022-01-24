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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_3__ {int /*<<< orphan*/  handler; } ;
typedef  TYPE_1__ post_response_ctx_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  post_headers_iterator_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(serf_request_t *request,
                      serf_bucket_t *response,
                      void *baton,
                      apr_pool_t *scratch_pool)
{
  post_response_ctx_t *prc = baton;
  serf_bucket_t *hdrs = FUNC1(response);

  /* Then see which ones we can discover. */
  FUNC0(hdrs, post_headers_iterator_callback, prc);

  /* Execute the 'real' response handler to XML-parse the repsonse body. */
  return FUNC2(request, response,
                                        prc->handler, scratch_pool);
}