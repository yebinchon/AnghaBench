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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  HDB ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 

krb5_error_code
FUNC7(krb5_context context, HDB *db, hdb_entry_ex *entry, void *data)
{
    krb5_error_code ret;
    krb5_storage *sp;

    FILE *f = data;

    FUNC1(f);
    sp = FUNC5(FUNC2(f));
    if(sp == NULL) {
	FUNC3(context, ENOMEM, "malloc: out of memory");
	return ENOMEM;
    }

    ret = FUNC0(context, sp, &entry->entry);
    if(ret) {
	FUNC4(sp);
	return ret;
    }

    FUNC6(sp, "\n", 1);
    FUNC4(sp);
    return 0;
}