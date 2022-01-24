#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
struct TYPE_7__ {int /*<<< orphan*/  tunnel; } ;
typedef  TYPE_1__ serve_params_t ;
struct TYPE_8__ {int /*<<< orphan*/  remote_host; int /*<<< orphan*/ * authz_user; int /*<<< orphan*/ * user; int /*<<< orphan*/  tunnel_user; int /*<<< orphan*/  tunnel; } ;
typedef  TYPE_2__ client_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

client_info_t *
FUNC3(svn_ra_svn_conn_t *conn,
                serve_params_t *params,
                apr_pool_t *pool)
{
  client_info_t *client_info = FUNC0(pool, sizeof(*client_info));

  client_info->tunnel = params->tunnel;
  client_info->tunnel_user = FUNC1(params, pool);
  client_info->user = NULL;
  client_info->authz_user = NULL;
  client_info->remote_host = FUNC2(conn);

  return client_info;
}