#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hdb_dbinfo {struct hdb_dbinfo* log_file; struct hdb_dbinfo* acl_file; struct hdb_dbinfo* mkey_file; struct hdb_dbinfo* dbname; struct hdb_dbinfo* realm; struct hdb_dbinfo* label; struct hdb_dbinfo* next; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdb_dbinfo*) ; 

void
FUNC1(krb5_context context, struct hdb_dbinfo **dbp)
{
    struct hdb_dbinfo *di, *ndi;

    for(di = *dbp; di != NULL; di = ndi) {
	ndi = di->next;
	FUNC0 (di->label);
	FUNC0 (di->realm);
	FUNC0 (di->dbname);
	FUNC0 (di->mkey_file);
	FUNC0 (di->acl_file);
	FUNC0 (di->log_file);
	FUNC0(di);
    }
    *dbp = NULL;
}