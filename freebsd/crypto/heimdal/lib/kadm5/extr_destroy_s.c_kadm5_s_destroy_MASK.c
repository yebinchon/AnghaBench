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
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {scalar_t__ my_context; int /*<<< orphan*/  caller; int /*<<< orphan*/  config; int /*<<< orphan*/  log_context; TYPE_2__* db; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  int /*<<< orphan*/  kadm5_ret_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* hdb_destroy ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 

kadm5_ret_t
FUNC6(void *server_handle)
{
    kadm5_ret_t ret;
    kadm5_server_context *context = server_handle;
    krb5_context kcontext = context->context;

    ret = context->db->hdb_destroy(kcontext, context->db);
    FUNC1 (&context->log_context);
    FUNC0 (&context->config);
    FUNC4 (kcontext, context->caller);
    if(context->my_context)
	FUNC3(kcontext);
    FUNC2 (context);
    return ret;
}