#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_6__ {int /*<<< orphan*/  terminate; int /*<<< orphan*/  handler; scalar_t__ cmdname; } ;
typedef  TYPE_1__ svn_ra_svn_cmd_entry_t ;
struct TYPE_7__ {int /*<<< orphan*/  terminate; int /*<<< orphan*/  deprecated_handler; int /*<<< orphan*/ * handler; scalar_t__ cmdname; } ;
typedef  TYPE_2__ svn_ra_svn__cmd_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,void*,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC3(svn_ra_svn_conn_t *conn,
                            apr_pool_t *pool,
                            const svn_ra_svn_cmd_entry_t *commands,
                            void *baton,
                            svn_boolean_t error_on_disconnect)
{
  apr_size_t i, count = 0;
  svn_ra_svn__cmd_entry_t *internal;

  while (commands[count].cmdname)
    count++;

  internal = FUNC0(pool, count * sizeof(*internal));
  for (i = 0; i < count; ++i)
    {
      internal[i].cmdname = commands[i].cmdname;
      internal[i].handler = NULL;
      internal[i].deprecated_handler = commands[i].handler;
      internal[i].terminate = commands[i].terminate;
    }

  return FUNC1(FUNC2(conn, pool,
                                                      internal, baton,
                                                      error_on_disconnect));
}