#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_7__ {TYPE_2__* db_file; } ;
typedef  TYPE_1__ hdb_sqlite_db ;
struct TYPE_8__ {struct TYPE_8__* hdb_db; } ;
typedef  TYPE_2__ HDB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static krb5_error_code
FUNC3(krb5_context context, HDB *db)
{
    int ret;
    hdb_sqlite_db *hsdb;

    ret = FUNC1(context, db);

    FUNC2(context, db);

    hsdb = (hdb_sqlite_db*)(db->hdb_db);

    FUNC0(hsdb->db_file);
    FUNC0(db->hdb_db);
    FUNC0(db);

    return ret;
}