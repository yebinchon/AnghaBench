#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_serf__xml_transition_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_opened_t ;
struct TYPE_4__ {int /*<<< orphan*/ * state_pool; } ;
typedef  TYPE_1__ svn_ra_serf__xml_estate_t ;
struct TYPE_5__ {TYPE_1__* current; int /*<<< orphan*/  scratch_pool; void* baton; int /*<<< orphan*/  cdata_cb; int /*<<< orphan*/  closed_cb; int /*<<< orphan*/  opened_cb; int /*<<< orphan*/  const* ttable; } ;
typedef  TYPE_2__ svn_ra_serf__xml_context_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_closed_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_cdata_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

svn_ra_serf__xml_context_t *
FUNC2(
  const svn_ra_serf__xml_transition_t *ttable,
  svn_ra_serf__xml_opened_t opened_cb,
  svn_ra_serf__xml_closed_t closed_cb,
  svn_ra_serf__xml_cdata_t cdata_cb,
  void *baton,
  apr_pool_t *result_pool)
{
  svn_ra_serf__xml_context_t *xmlctx;
  svn_ra_serf__xml_estate_t *xes;

  xmlctx = FUNC0(result_pool, sizeof(*xmlctx));
  xmlctx->ttable = ttable;
  xmlctx->opened_cb = opened_cb;
  xmlctx->closed_cb = closed_cb;
  xmlctx->cdata_cb = cdata_cb;
  xmlctx->baton = baton;
  xmlctx->scratch_pool = FUNC1(result_pool);

  xes = FUNC0(result_pool, sizeof(*xes));
  /* XES->STATE == 0  */

  /* Child states may use this pool to allocate themselves. If a child
     needs to collect information, then it will construct a subpool and
     will use that to allocate itself and its collected data.  */
  xes->state_pool = result_pool;

  xmlctx->current = xes;

  return xmlctx;
}