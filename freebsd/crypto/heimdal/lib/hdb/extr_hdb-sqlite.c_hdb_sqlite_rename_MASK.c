#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {int /*<<< orphan*/  db_file; } ;
typedef  TYPE_1__ hdb_sqlite_db ;
struct TYPE_7__ {scalar_t__ hdb_db; } ;
typedef  TYPE_2__ HDB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context, HDB *db, const char *new_name)
{
    hdb_sqlite_db *hsdb = (hdb_sqlite_db *) db->hdb_db;
    int ret;

    FUNC3(context, "hdb_sqlite_rename");

    if (FUNC5(new_name, "sqlite:", 7) == 0)
	new_name += 7;

    FUNC1(context, db);

    ret = FUNC4(hsdb->db_file, new_name);
    FUNC0(hsdb->db_file);

    FUNC2(context, db, new_name);

    return ret;
}