#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct prop_data {int /*<<< orphan*/  sock; int /*<<< orphan*/  auth_context; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  HDB ;

/* Variables and functions */
 scalar_t__ decrypt_flag ; 
 scalar_t__ encrypt_flag ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mkey5 ; 
 scalar_t__ to_stdout ; 

krb5_error_code
FUNC7(krb5_context context, HDB *db, hdb_entry_ex *entry, void *appdata)
{
    krb5_error_code ret;
    struct prop_data *pd = appdata;
    krb5_data data;

    if(encrypt_flag) {
	ret = FUNC1(context, &entry->entry, mkey5);
	if (ret) {
	    FUNC4(context, ret, "hdb_seal_keys_mkey");
	    return ret;
	}
    }
    if(decrypt_flag) {
	ret = FUNC2(context, &entry->entry, mkey5);
	if (ret) {
	    FUNC4(context, ret, "hdb_unseal_keys_mkey");
	    return ret;
	}
    }

    ret = FUNC0(context, &entry->entry, &data);
    if(ret) {
	FUNC4(context, ret, "hdb_entry2value");
	return ret;
    }

    if(to_stdout)
	ret = FUNC5(context, &pd->sock, &data);
    else
	ret = FUNC6(context, pd->auth_context,
				      &pd->sock, &data);
    FUNC3(&data);
    return ret;
}