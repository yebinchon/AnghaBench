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
struct _krb5_key_type {int /*<<< orphan*/  (* schedule ) (int /*<<< orphan*/ ,struct _krb5_key_type*,struct _krb5_key_data*) ;int /*<<< orphan*/  schedule_size; } ;
struct _krb5_key_data {int /*<<< orphan*/ * schedule; TYPE_1__* key; } ;
struct _krb5_encryption_type {struct _krb5_key_type* keytype; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_2__ {int /*<<< orphan*/  keytype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct _krb5_encryption_type* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct _krb5_key_type*,struct _krb5_key_data*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC8(krb5_context context,
	      struct _krb5_key_data *key)
{
    krb5_error_code ret;
    struct _krb5_encryption_type *et = FUNC2(key->key->keytype);
    struct _krb5_key_type *kt;

    if (et == NULL) {
        return FUNC7 (context,
                               key->key->keytype);
    }

    kt = et->keytype;

    if(kt->schedule == NULL)
	return 0;
    if (key->schedule != NULL)
	return 0;
    FUNC0(key->schedule, 1);
    if(key->schedule == NULL) {
	FUNC5(context, ENOMEM, FUNC1("malloc: out of memory", ""));
	return ENOMEM;
    }
    ret = FUNC4(key->schedule, kt->schedule_size);
    if(ret) {
	FUNC3(key->schedule);
	key->schedule = NULL;
	return ret;
    }
    (*kt->schedule)(context, kt, key);
    return 0;
}