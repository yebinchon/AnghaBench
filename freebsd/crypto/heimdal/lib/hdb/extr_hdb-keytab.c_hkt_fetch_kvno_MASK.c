#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ktentry ;
typedef  int /*<<< orphan*/  krb5_kvno ;
struct TYPE_16__ {int /*<<< orphan*/  principal; } ;
struct TYPE_15__ {int server; int forwardable; int renewable; } ;
struct TYPE_17__ {int /*<<< orphan*/  principal; TYPE_2__ created_by; TYPE_1__ flags; } ;
typedef  TYPE_3__ krb5_keytab_entry ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;
typedef  TYPE_4__* hdb_keytab ;
struct TYPE_19__ {TYPE_3__ entry; } ;
typedef  TYPE_5__ hdb_entry_ex ;
struct TYPE_20__ {int /*<<< orphan*/  hdb_db; } ;
struct TYPE_18__ {int /*<<< orphan*/  keytab; } ;
typedef  TYPE_6__ HDB ;

/* Variables and functions */
 scalar_t__ HDB_ERR_NOENTRY ; 
 unsigned int HDB_F_KVNO_SPECIFIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context, HDB * db, krb5_const_principal principal,
	       unsigned flags, krb5_kvno kvno, hdb_entry_ex * entry)
{
    hdb_keytab k = (hdb_keytab)db->hdb_db;
    krb5_error_code ret;
    krb5_keytab_entry ktentry;

    if (!(flags & HDB_F_KVNO_SPECIFIED)) {
	    /* Preserve previous behaviour if no kvno specified */
	    kvno = 0;
    }

    FUNC6(&ktentry, 0, sizeof(ktentry));

    entry->entry.flags.server = 1;
    entry->entry.flags.forwardable = 1;
    entry->entry.flags.renewable = 1;

    /* Not recorded in the OD backend, make something up */
    ret = FUNC5(context, "hdb/keytab@WELL-KNOWN:KEYTAB-BACKEND",
			  &entry->entry.created_by.principal);
    if (ret)
	goto out;

    /*
     * XXX really needs to try all enctypes and just not pick the
     * first one, even if that happens to be des3-cbc-sha1 (ie best
     * enctype) in the Apple case. A while loop over all known
     * enctypes should work.
     */

    ret = FUNC4(context, k->keytab, principal, kvno, 0, &ktentry);
    if (ret) {
	ret = HDB_ERR_NOENTRY;
	goto out;
    }

    ret = FUNC2(context, principal, &entry->entry.principal);
    if (ret)
	goto out;

    ret = FUNC0(context, &ktentry, entry);

 out:
    if (ret) {
	FUNC1(&entry->entry);
	FUNC6(&entry->entry, 0, sizeof(entry->entry));
    }
    FUNC3(context, &ktentry);

    return ret;
}