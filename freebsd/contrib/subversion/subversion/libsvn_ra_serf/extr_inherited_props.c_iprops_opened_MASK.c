#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__dav_props_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  pool; TYPE_2__* curr_iprop; int /*<<< orphan*/  curr_propname; } ;
typedef  TYPE_1__ iprops_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_4__ {int /*<<< orphan*/  prop_hash; } ;

/* Variables and functions */
 int IPROPS_ITEM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_ra_serf__xml_estate_t *xes,
              void *baton,
              int entered_state,
              const svn_ra_serf__dav_props_t *tag,
              apr_pool_t *scratch_pool)
{
  iprops_context_t *iprops_ctx = baton;

  if (entered_state == IPROPS_ITEM)
    {
      FUNC2(iprops_ctx->curr_propname);

      iprops_ctx->curr_iprop = FUNC1(iprops_ctx->pool,
                                           sizeof(*iprops_ctx->curr_iprop));

      iprops_ctx->curr_iprop->prop_hash = FUNC0(iprops_ctx->pool);
    }
  return SVN_NO_ERROR;
}