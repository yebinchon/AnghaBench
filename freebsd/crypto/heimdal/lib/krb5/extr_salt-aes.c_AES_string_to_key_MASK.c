#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct _krb5_key_data {TYPE_6__* key; int /*<<< orphan*/ * schedule; } ;
struct _krb5_encryption_type {TYPE_2__* keytype; } ;
struct TYPE_11__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {TYPE_1__ saltvalue; } ;
typedef  TYPE_3__ krb5_salt ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_14__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_5__ keyvalue; int /*<<< orphan*/  keytype; } ;
struct TYPE_12__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int) ; 
 int ENOMEM ; 
 int KRB5_PROG_KEYTYPE_NOSUPP ; 
 char* FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ _krb5_AES_string_to_default_iterator ; 
 int FUNC3 (int /*<<< orphan*/ ,struct _krb5_encryption_type*,struct _krb5_key_data*,char*,int /*<<< orphan*/ ) ; 
 struct _krb5_encryption_type* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct _krb5_key_data*,struct _krb5_encryption_type*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC11(krb5_context context,
		  krb5_enctype enctype,
		  krb5_data password,
		  krb5_salt salt,
		  krb5_data opaque,
		  krb5_keyblock *key)
{
    krb5_error_code ret;
    uint32_t iter;
    struct _krb5_encryption_type *et;
    struct _krb5_key_data kd;

    if (opaque.length == 0)
	iter = _krb5_AES_string_to_default_iterator;
    else if (opaque.length == 4) {
	unsigned long v;
	FUNC6(opaque.data, &v, 4);
	iter = ((uint32_t)v);
    } else
	return KRB5_PROG_KEYTYPE_NOSUPP; /* XXX */

    et = FUNC4(enctype);
    if (et == NULL)
	return KRB5_PROG_KEYTYPE_NOSUPP;

    kd.schedule = NULL;
    FUNC0(kd.key, 1);
    if(kd.key == NULL) {
	FUNC9 (context, ENOMEM, FUNC1("malloc: out of memory", ""));
	return ENOMEM;
    }
    kd.key->keytype = enctype;
    ret = FUNC8(&kd.key->keyvalue, et->keytype->size);
    if (ret) {
	FUNC9 (context, ret, FUNC1("malloc: out of memory", ""));
	return ret;
    }

    ret = FUNC2(password.data, password.length,
				 salt.saltvalue.data, salt.saltvalue.length,
				 iter,
				 et->keytype->size, kd.key->keyvalue.data);
    if (ret != 1) {
	FUNC5(context, &kd, et);
	FUNC9(context, KRB5_PROG_KEYTYPE_NOSUPP,
			       "Error calculating s2k");
	return KRB5_PROG_KEYTYPE_NOSUPP;
    }

    ret = FUNC3(context, et, &kd, "kerberos", FUNC10("kerberos"));
    if (ret == 0)
	ret = FUNC7(context, kd.key, key);
    FUNC5(context, &kd, et);

    return ret;
}