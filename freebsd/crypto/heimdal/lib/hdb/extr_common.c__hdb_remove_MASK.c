#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;
struct TYPE_5__ {int (* hdb__del ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ HDB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC4(krb5_context context, HDB *db, krb5_const_principal principal)
{
    krb5_data key;
    int code;

    FUNC0(context, principal, &key);

    code = FUNC1(context, db, &key);
    if (code) {
	FUNC2(&key);
	return code;
    }
    code = db->hdb__del(context, db, key);
    FUNC2(&key);
    return code;
}