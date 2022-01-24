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
struct krb5_kdc_configuration {int num_db; TYPE_1__** db; } ;
struct hdb_dbinfo {int dummy; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_3__ {int /*<<< orphan*/  (* hdb_destroy ) (int /*<<< orphan*/ ,TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct krb5_kdc_configuration*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hdb_dbinfo*) ; 
 struct hdb_dbinfo* FUNC6 (struct hdb_dbinfo*,struct hdb_dbinfo*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct hdb_dbinfo**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct hdb_dbinfo**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct krb5_kdc_configuration*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 

krb5_error_code
FUNC11(krb5_context context, struct krb5_kdc_configuration *c)
{
    struct hdb_dbinfo *info, *d;
    krb5_error_code ret;
    int i;

    /* fetch the databases */
    ret = FUNC8(context, &info);
    if (ret)
	return ret;

    d = NULL;
    while ((d = FUNC6(info, d)) != NULL) {

	ret = FUNC0(context, c,
		     FUNC3(context, d),
		     FUNC5(context, d));
	if (ret)
	    goto out;

	FUNC9(context, c, 0, "label: %s",
		FUNC4(context, d));
	FUNC9(context, c, 0, "\tdbname: %s",
		FUNC3(context, d));
	FUNC9(context, c, 0, "\tmkey_file: %s",
		FUNC5(context, d));
	FUNC9(context, c, 0, "\tacl_file: %s",
		FUNC2(context, d));
    }
    FUNC7(context, &info);

    return 0;
out:
    for (i = 0; i < c->num_db; i++)
	if (c->db[i] && c->db[i]->hdb_destroy)
	    (*c->db[i]->hdb_destroy)(context, c->db[i]);
    c->num_db = 0;
    FUNC1(c->db);
    c->db = NULL;

    FUNC7(context, &info);

    return ret;
}