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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hdb_entry ;
struct TYPE_10__ {scalar_t__ (* hdb__get ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* hdb__del ) (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_9__ {TYPE_1__ aliases; } ;
typedef  TYPE_2__ HDB_Ext_Aliases ;
typedef  TYPE_3__ HDB ;

/* Variables and functions */
 scalar_t__ HDB_ERR_NOENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__ const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context, HDB *db, krb5_data *key)
{
    const HDB_Ext_Aliases *aliases;
    krb5_error_code code;
    hdb_entry oldentry;
    krb5_data value;
    size_t i;

    code = db->hdb__get(context, db, *key, &value);
    if (code == HDB_ERR_NOENTRY)
	return 0;
    else if (code)
	return code;

    code = FUNC3(context, &value, &oldentry);
    FUNC4(&value);
    if (code)
	return code;

    code = FUNC1(&oldentry, &aliases);
    if (code || aliases == NULL) {
	FUNC0(&oldentry);
	return code;
    }
    for (i = 0; i < aliases->aliases.len; i++) {
	krb5_data akey;

	FUNC2(context, &aliases->aliases.val[i], &akey);
	code = db->hdb__del(context, db, akey);
	FUNC4(&akey);
	if (code) {
	    FUNC0(&oldentry);
	    return code;
	}
    }
    FUNC0(&oldentry);
    return 0;
}