#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* tl_data_contents; int /*<<< orphan*/  tl_data_length; struct TYPE_8__* tl_data_next; } ;
typedef  TYPE_1__ krb5_tl_data ;
struct TYPE_9__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  TYPE_3__* kadm5_principal_ent_t ;
struct TYPE_10__ {TYPE_1__* key_data; scalar_t__ n_tl_data; TYPE_1__* tl_data; int /*<<< orphan*/  n_key_data; int /*<<< orphan*/  mod_name; int /*<<< orphan*/  principal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(void *server_handle,
			 kadm5_principal_ent_t princ)
{
    kadm5_server_context *context = server_handle;
    if(princ->principal)
	FUNC2(context->context, princ->principal);
    if(princ->mod_name)
	FUNC2(context->context, princ->mod_name);
    FUNC1(server_handle, &princ->n_key_data, princ->key_data);
    while(princ->n_tl_data && princ->tl_data) {
	krb5_tl_data *tp;
	tp = princ->tl_data;
	princ->tl_data = tp->tl_data_next;
	princ->n_tl_data--;
	FUNC3(tp->tl_data_contents, 0, tp->tl_data_length);
	FUNC0(tp->tl_data_contents);
	FUNC0(tp);
    }
    if (princ->key_data != NULL)
	FUNC0 (princ->key_data);
}