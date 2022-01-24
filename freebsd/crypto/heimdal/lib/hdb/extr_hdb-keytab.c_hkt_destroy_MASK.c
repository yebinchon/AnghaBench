#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* hdb_keytab ;
struct TYPE_6__ {struct TYPE_6__* hdb_name; struct TYPE_6__* path; int /*<<< orphan*/  hdb_db; } ;
typedef  TYPE_1__ HDB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static krb5_error_code
FUNC2(krb5_context context, HDB *db)
{
    hdb_keytab k = (hdb_keytab)db->hdb_db;
    krb5_error_code ret;

    ret = FUNC1 (context, db);

    FUNC0(k->path);
    FUNC0(k);

    FUNC0(db->hdb_name);
    FUNC0(db);
    return ret;
}