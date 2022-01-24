#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
struct TYPE_8__ {size_t length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * hdb_master_key ;
struct TYPE_7__ {TYPE_2__ keyvalue; int /*<<< orphan*/  keytype; } ;
struct TYPE_9__ {int /*<<< orphan*/ * mkvno; TYPE_1__ key; } ;
typedef  TYPE_3__ Key ;

/* Variables and functions */
 scalar_t__ HDB_ERR_NO_MKEY ; 
 int /*<<< orphan*/  HDB_KU_MKEY ; 
 scalar_t__ KRB5KRB_AP_ERR_BAD_INTEGRITY ; 
 scalar_t__ KRB5_BAD_KEYSIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

krb5_error_code
FUNC6(krb5_context context, Key *k, hdb_master_key mkey)
{

    krb5_error_code ret;
    krb5_data res;
    size_t keysize;

    hdb_master_key key;

    if(k->mkvno == NULL)
	return 0;

    key = FUNC0(k->mkvno, mkey);

    if (key == NULL)
	return HDB_ERR_NO_MKEY;

    ret = FUNC1(context, key, HDB_KU_MKEY,
			    k->key.keyvalue.data,
			    k->key.keyvalue.length,
			    &res);
    if(ret == KRB5KRB_AP_ERR_BAD_INTEGRITY) {
	/* try to decrypt with MIT key usage */
	ret = FUNC1(context, key, 0,
				k->key.keyvalue.data,
				k->key.keyvalue.length,
				&res);
    }
    if (ret)
	return ret;

    /* fixup keylength if the key got padded when encrypting it */
    ret = FUNC4(context, k->key.keytype, &keysize);
    if (ret) {
	FUNC3(&res);
	return ret;
    }
    if (keysize > res.length) {
	FUNC3(&res);
	return KRB5_BAD_KEYSIZE;
    }

    FUNC5(k->key.keyvalue.data, 0, k->key.keyvalue.length);
    FUNC2(k->key.keyvalue.data);
    k->key.keyvalue = res;
    k->key.keyvalue.length = keysize;
    FUNC2(k->mkvno);
    k->mkvno = NULL;

    return 0;
}