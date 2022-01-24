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
typedef  int /*<<< orphan*/  kadm5_ret_t ;
struct TYPE_2__ {int /*<<< orphan*/  context; scalar_t__ my_context; int /*<<< orphan*/ * ac; scalar_t__ service_name; scalar_t__ client_name; int /*<<< orphan*/  sock; scalar_t__ admin_server; scalar_t__ realm; } ;
typedef  TYPE_1__ kadm5_client_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

kadm5_ret_t
FUNC4(void *server_handle)
{
    kadm5_client_context *context = server_handle;

    FUNC1(context->realm);
    FUNC1(context->admin_server);
    FUNC0(context->sock);
    if (context->client_name)
	FUNC1(context->client_name);
    if (context->service_name)
	FUNC1(context->service_name);
    if (context->ac != NULL)
	FUNC2(context->context, context->ac);
    if(context->my_context)
	FUNC3(context->context);
    return 0;
}