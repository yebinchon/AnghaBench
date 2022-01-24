#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_serf__connection_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {scalar_t__ num_active_propfinds; int /*<<< orphan*/  target_rev; TYPE_5__* sess; scalar_t__ num_active_fetches; } ;
typedef  TYPE_1__ report_context_t ;
struct TYPE_11__ {TYPE_3__* propfind_handler; int /*<<< orphan*/  pool; int /*<<< orphan*/  url; scalar_t__ fetch_props; TYPE_1__* ctx; } ;
typedef  TYPE_2__ dir_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {scalar_t__ num_conns; scalar_t__ max_connections; } ;
struct TYPE_12__ {TYPE_2__* done_delegate_baton; int /*<<< orphan*/  done_delegate; int /*<<< orphan*/ * conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  all_props ; 
 int /*<<< orphan*/  dir_props_done ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  set_dir_prop ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static svn_error_t *
FUNC6(dir_baton_t *dir,
              apr_pool_t *scratch)
{
  report_context_t *ctx = dir->ctx;
  svn_ra_serf__connection_t *conn;

  /* Open extra connections if we have enough requests to send. */
  if (ctx->sess->num_conns < ctx->sess->max_connections)
    FUNC0(FUNC3(ctx->sess, ctx->num_active_fetches +
                                                 ctx->num_active_propfinds));

  /* What connection should we go on? */
  conn = FUNC2(ctx);

  /* If needed, create the PROPFIND to retrieve the file's properties. */
  if (dir->fetch_props)
    {
      FUNC0(FUNC4(&dir->propfind_handler,
                                                   ctx->sess, dir->url,
                                                   ctx->target_rev, "0",
                                                   all_props,
                                                   set_dir_prop, dir,
                                                   dir->pool));

      dir->propfind_handler->conn = conn;
      dir->propfind_handler->done_delegate = dir_props_done;
      dir->propfind_handler->done_delegate_baton = dir;

      /* Create a serf request for the PROPFIND.  */
      FUNC5(dir->propfind_handler);

      ctx->num_active_propfinds++;
    }
  else
    FUNC1();

  return SVN_NO_ERROR;
}