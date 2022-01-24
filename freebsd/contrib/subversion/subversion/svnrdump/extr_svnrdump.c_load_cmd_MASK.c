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
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_2__ {int /*<<< orphan*/  skip_revprops; int /*<<< orphan*/  quiet; int /*<<< orphan*/  dumpfile; int /*<<< orphan*/  session; int /*<<< orphan*/  ctx; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ opt_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(apr_getopt_t *os,
         void *baton,
         apr_pool_t *pool)
{
  opt_baton_t *opt_baton = baton;
  svn_ra_session_t *aux_session;

  FUNC0(FUNC2(&aux_session, opt_baton->url, NULL,
                                      opt_baton->ctx, pool, pool));
  return FUNC1(opt_baton->session, aux_session,
                        opt_baton->dumpfile, opt_baton->quiet,
                        opt_baton->skip_revprops, pool);
}