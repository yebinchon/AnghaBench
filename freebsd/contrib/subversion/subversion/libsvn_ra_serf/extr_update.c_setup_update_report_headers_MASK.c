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
struct TYPE_2__ {int /*<<< orphan*/  sess; } ;
typedef  TYPE_1__ report_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC1(serf_bucket_t *headers,
                            void *baton,
                            apr_pool_t *pool /* request pool */,
                            apr_pool_t *scratch_pool)
{
  report_context_t *report = baton;

  FUNC0(headers, report->sess);

  return SVN_NO_ERROR;
}