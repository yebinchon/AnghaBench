#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_13__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_12__ {unsigned int len; TYPE_4__* val; } ;
struct TYPE_14__ {TYPE_1__ keys; } ;
typedef  TYPE_3__ hdb_entry ;
struct TYPE_15__ {int /*<<< orphan*/ * salt; int /*<<< orphan*/  key; int /*<<< orphan*/ * mkvno; } ;
typedef  TYPE_4__ Key ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (unsigned int) ; 

kadm5_ret_t
FUNC6(kadm5_server_context *context,
		 hdb_entry *ent,
		 int n_keys,
		 krb5_keyblock *keyblocks)
{
    krb5_error_code ret;
    int i;
    unsigned len;
    Key *keys;

    len  = n_keys;
    keys = FUNC5 (len * sizeof(*keys));
    if (keys == NULL && len != 0)
	return ENOMEM;

    FUNC1 (keys, len);

    for(i = 0; i < n_keys; i++) {
	keys[i].mkvno = NULL;
	ret = FUNC4 (context->context,
					   &keyblocks[i],
					   &keys[i].key);
	if(ret)
	    goto out;
	keys[i].salt = NULL;
    }
    FUNC0 (context->context, ent->keys.len, ent->keys.val);
    ent->keys.len = len;
    ent->keys.val = keys;

    FUNC3(context->context, ent, 0);
    FUNC2(context->context, ent);

    return 0;
 out:
    FUNC0 (context->context, len, keys);
    return ret;
}