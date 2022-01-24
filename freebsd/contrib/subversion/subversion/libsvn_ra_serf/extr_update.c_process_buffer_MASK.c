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
struct TYPE_3__ {int /*<<< orphan*/  inner_handler_baton; int /*<<< orphan*/ * (* inner_handler ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ update_delay_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(update_delay_baton_t *udb,
               serf_request_t *request,
               const void *data,
               apr_size_t len,
               svn_boolean_t at_eof,
               serf_bucket_alloc_t *alloc,
               apr_pool_t *pool)
{
  serf_bucket_t *tmp_bucket;
  svn_error_t *err;

  /* ### This code (and the eagain bucket code) can probably be
      ### simplified by using a bit of aggregate bucket magic.
      ### See mail from Ivan to dev@s.a.o. */
  if (at_eof)
  {
      tmp_bucket = FUNC1(data, len, NULL, NULL,
                                             alloc);
  }
  else
  {
      tmp_bucket = FUNC4(data, len,
                                                          alloc);
  }

  /* If not at EOF create a bucket that finishes with EAGAIN, otherwise
      use a standard bucket with default EOF handling */
  err = udb->inner_handler(request, tmp_bucket,
                           udb->inner_handler_baton, pool);

  /* And free the bucket explicitly to avoid growing request allocator
     storage (in a loop) */
  FUNC0(tmp_bucket);

  return FUNC3(err);
}