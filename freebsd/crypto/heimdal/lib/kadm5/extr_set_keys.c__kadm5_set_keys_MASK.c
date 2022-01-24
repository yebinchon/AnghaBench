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
struct TYPE_9__ {int /*<<< orphan*/  db; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_8__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_10__ {TYPE_1__ keys; int /*<<< orphan*/  principal; } ;
typedef  TYPE_3__ hdb_entry ;
typedef  int /*<<< orphan*/  Key ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 

kadm5_ret_t
FUNC5(kadm5_server_context *context,
		hdb_entry *ent,
		const char *password)
{
    Key *keys;
    size_t num_keys;
    kadm5_ret_t ret;

    ret = FUNC3(context->context,
					ent->principal,
					password, &keys, &num_keys);
    if (ret)
	return ret;

    FUNC0 (context->context, ent->keys.len, ent->keys.val);
    ent->keys.val = keys;
    ent->keys.len = num_keys;

    FUNC2(context->context, ent, 0);

    if (FUNC4(context->context, NULL, FALSE,
				     "kadmin", "save-password", NULL))
    {
	ret = FUNC1(context->context, context->db,
				     ent, password);
	if (ret)
	    return ret;
    }

    return 0;
}