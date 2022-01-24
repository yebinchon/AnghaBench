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
struct _krb5_key_data {TYPE_3__* key; } ;
struct _krb5_checksum_type {int flags; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  TYPE_2__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_8__ {size_t length; scalar_t__ data; } ;
struct TYPE_10__ {TYPE_1__ keyvalue; } ;
struct TYPE_9__ {struct _krb5_key_data key; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int F_DERIVED ; 
 int F_VARIANT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,unsigned int,struct _krb5_key_data**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct _krb5_key_data*) ; 
 struct _krb5_key_data* FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
		 krb5_crypto crypto,
		 unsigned usage,  /* not krb5_key_usage */
		 struct _krb5_checksum_type *ct,
		 struct _krb5_key_data **key)
{
    krb5_error_code ret = 0;

    if(ct->flags & F_DERIVED)
	ret = FUNC1(context, crypto, usage, key);
    else if(ct->flags & F_VARIANT) {
	size_t i;

	*key = FUNC3(crypto, 0xff/* KRB5_KU_RFC1510_VARIANT */);
	if(*key == NULL) {
	    FUNC5(context, ENOMEM, FUNC0("malloc: out of memory", ""));
	    return ENOMEM;
	}
	ret = FUNC4(context, crypto->key.key, &(*key)->key);
	if(ret)
	    return ret;
	for(i = 0; i < (*key)->key->keyvalue.length; i++)
	    ((unsigned char*)(*key)->key->keyvalue.data)[i] ^= 0xF0;
    } else {
	*key = &crypto->key;
    }
    if(ret == 0)
	ret = FUNC2(context, *key);
    return ret;
}