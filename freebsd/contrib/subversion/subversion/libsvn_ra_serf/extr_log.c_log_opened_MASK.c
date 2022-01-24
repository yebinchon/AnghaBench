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
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__dav_props_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {void* collect_paths; void* collect_revprops; } ;
typedef  TYPE_1__ log_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int ITEM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_ra_serf__xml_estate_t *xes,
           void *baton,
           int entered_state,
           const svn_ra_serf__dav_props_t *tag,
           apr_pool_t *scratch_pool)
{
  log_context_t *log_ctx = baton;

  if (entered_state == ITEM)
    {
      apr_pool_t *state_pool = FUNC1(xes);

      log_ctx->collect_revprops = FUNC0(state_pool);
      log_ctx->collect_paths = FUNC0(state_pool);
    }

  return SVN_NO_ERROR;
}