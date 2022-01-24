#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  keytype; } ;
typedef  TYPE_2__ krb5_keyblock ;
typedef  int /*<<< orphan*/  kblock ;
struct TYPE_22__ {int /*<<< orphan*/  context; } ;
typedef  TYPE_3__ kadm5_server_context ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_20__ {size_t len; TYPE_5__* val; } ;
struct TYPE_23__ {TYPE_1__ keys; int /*<<< orphan*/  principal; } ;
typedef  TYPE_4__ hdb_entry ;
struct TYPE_24__ {TYPE_2__ key; } ;
typedef  TYPE_5__ Key ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__**,size_t*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 

kadm5_ret_t
FUNC11 (kadm5_server_context *context,
			  hdb_entry *ent,
			  krb5_keyblock **new_keys,
			  int *n_keys)
{
   krb5_keyblock *kblock = NULL;
   kadm5_ret_t ret = 0;
   int des_keyblock;
   size_t i, num_keys;
   Key *keys;

   ret = FUNC4(context->context, ent->principal,
			       &keys, &num_keys, 1);
   if (ret)
	return ret;

   kblock = FUNC9(num_keys * sizeof(kblock[0]));
   if (kblock == NULL) {
	ret = ENOMEM;
	FUNC0 (context->context, num_keys, keys);
	return ret;
   }
   FUNC10(kblock, 0, num_keys * sizeof(kblock[0]));

   des_keyblock = -1;
   for (i = 0; i < num_keys; i++) {

	/*
	 * To make sure all des keys are the the same we generate only
	 * the first one and then copy key to all other des keys.
	 */

	if (des_keyblock != -1 && FUNC5(keys[i].key.keytype)) {
	    ret = FUNC6 (context->context,
					       &kblock[des_keyblock],
					       &kblock[i]);
	    if (ret)
		goto out;
	    kblock[i].keytype = keys[i].key.keytype;
	} else {
	    ret = FUNC8 (context->context,
						 keys[i].key.keytype,
						 &kblock[i]);
	    if (ret)
		goto out;

	    if (FUNC5(keys[i].key.keytype))
		des_keyblock = i;
	}

	ret = FUNC6 (context->context,
					   &kblock[i],
					   &keys[i].key);
	if (ret)
	    goto out;
   }

out:
   if(ret) {
	for (i = 0; i < num_keys; ++i)
	    FUNC7 (context->context, &kblock[i]);
	FUNC1(kblock);
	FUNC0 (context->context, num_keys, keys);
	return ret;
   }

   FUNC0 (context->context, ent->keys.len, ent->keys.val);
   ent->keys.val = keys;
   ent->keys.len = num_keys;
   *new_keys     = kblock;
   *n_keys       = num_keys;

   FUNC3(context->context, ent, 0);
   FUNC2(context->context, ent);

   return 0;
}