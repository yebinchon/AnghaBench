#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int code; } ;
struct TYPE_6__ {int /*<<< orphan*/  no_fail_on_http_redirect_status; TYPE_1__ sline; scalar_t__ server_error; scalar_t__ no_fail_on_http_failure_status; int /*<<< orphan*/  done; } ;
typedef  TYPE_2__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_request_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(serf_request_t *request,
              void *handler_baton,
              apr_pool_t *scratch_pool)
{
  svn_ra_serf__handler_t *handler = handler_baton;

  FUNC0(handler->done);

  if (handler->no_fail_on_http_failure_status)
    return SVN_NO_ERROR;

  if (handler->server_error)
    return FUNC2(handler, scratch_pool);

  if (handler->sline.code >= 400 || handler->sline.code <= 199)
    {
      return FUNC1(FUNC3(handler));
    }

  if ((handler->sline.code >= 300 && handler->sline.code < 399)
      && !handler->no_fail_on_http_redirect_status)
    {
      return FUNC1(FUNC3(handler));
    }

  return SVN_NO_ERROR;
}