#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* krb5_principal ;
typedef  int /*<<< orphan*/  krb5_kvno ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_3__* krb5_const_principal ;
struct TYPE_23__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_5__ hdb_entry_ex ;
struct TYPE_24__ {TYPE_3__* principal; } ;
typedef  TYPE_6__ hdb_entry_alias ;
struct TYPE_25__ {int (* hdb__get ) (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ hdb_master_key_set; } ;
struct TYPE_20__ {int len; int /*<<< orphan*/ * val; } ;
struct TYPE_21__ {scalar_t__ name_type; TYPE_1__ name_string; } ;
struct TYPE_22__ {TYPE_2__ name; } ;
typedef  TYPE_7__ HDB ;

/* Variables and functions */
 int ASN1_BAD_ID ; 
 int HDB_ERR_NOENTRY ; 
 unsigned int HDB_F_CANON ; 
 unsigned int HDB_F_DECRYPT ; 
 scalar_t__ KRB5_NT_ENTERPRISE_PRINCIPAL ; 
 int KRB5_PARSE_MALFORMED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

krb5_error_code
FUNC12(krb5_context context, HDB *db, krb5_const_principal principal,
		unsigned flags, krb5_kvno kvno, hdb_entry_ex *entry)
{
    krb5_principal enterprise_principal = NULL;
    krb5_data key, value;
    krb5_error_code ret;
    int code;

    if (principal->name.name_type == KRB5_NT_ENTERPRISE_PRINCIPAL) {
	if (principal->name.name_string.len != 1) {
	    ret = KRB5_PARSE_MALFORMED;
	    FUNC9(context, ret, "malformed principal: "
				   "enterprise name with %d name components",
				   principal->name.name_string.len);
	    return ret;
	}
	ret = FUNC8(context, principal->name.name_string.val[0],
			      &enterprise_principal);
	if (ret)
	    return ret;
	principal = enterprise_principal;
    }

    FUNC2(context, principal, &key);
    if (enterprise_principal)
	FUNC7(context, enterprise_principal);
    code = db->hdb__get(context, db, key, &value);
    FUNC6(&key);
    if(code)
	return code;
    code = FUNC4(context, &value, &entry->entry);
    if (code == ASN1_BAD_ID && (flags & HDB_F_CANON) == 0) {
	FUNC6(&value);
	return HDB_ERR_NOENTRY;
    } else if (code == ASN1_BAD_ID) {
	hdb_entry_alias alias;

	code = FUNC5(context, &value, &alias);
	if (code) {
	    FUNC6(&value);
	    return code;
	}
	FUNC2(context, alias.principal, &key);
	FUNC6(&value);
	FUNC0(&alias);

	code = db->hdb__get(context, db, key, &value);
	FUNC6(&key);
	if (code)
	    return code;
	code = FUNC4(context, &value, &entry->entry);
	if (code) {
	    FUNC6(&value);
	    return code;
	}
    }
    FUNC6(&value);
    if (db->hdb_master_key_set && (flags & HDB_F_DECRYPT)) {
	code = FUNC3 (context, db, &entry->entry);
	if (code)
	    FUNC1(context, entry);
    }
    return code;
}