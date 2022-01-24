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
struct dump_options {scalar_t__ decrypt_flag; } ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_6__ {int /*<<< orphan*/  (* hdb_close ) (int /*<<< orphan*/ ,TYPE_1__*) ;scalar_t__ (* hdb_open ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ;} ;
typedef  TYPE_1__ HDB ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  HDB_F_DECRYPT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdb_print_entry ; 
 int /*<<< orphan*/  kadm_handle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  local_flag ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int
FUNC8(struct dump_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    FILE *f;
    HDB *db = NULL;

    if(!local_flag) {
	FUNC5(context, "dump is only available in local (-l) mode");
	return 0;
    }

    db = FUNC0(kadm_handle);

    if(argc == 0)
	f = stdout;
    else
	f = FUNC2(argv[0], "w");

    if(f == NULL) {
	FUNC4(context, errno, "open: %s", argv[0]);
	goto out;
    }
    ret = db->hdb_open(context, db, O_RDONLY, 0600);
    if(ret) {
	FUNC4(context, ret, "hdb_open");
	goto out;
    }

    FUNC3(context, db, opt->decrypt_flag ? HDB_F_DECRYPT : 0,
		hdb_print_entry, f);

    db->hdb_close(context, db);
out:
    if(f && f != stdout)
	FUNC1(f);
    return 0;
}