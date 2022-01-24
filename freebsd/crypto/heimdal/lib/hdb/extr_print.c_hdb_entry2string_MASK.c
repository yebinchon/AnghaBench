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
struct TYPE_3__ {char* data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hdb_entry ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

krb5_error_code
FUNC6 (krb5_context context, hdb_entry *ent, char **str)
{
    krb5_error_code ret;
    krb5_data data;
    krb5_storage *sp;

    sp = FUNC2();
    if(sp == NULL) {
	FUNC1(context, ENOMEM, "malloc: out of memory");
	return ENOMEM;
    }

    ret = FUNC0(context, sp, ent);
    if(ret) {
	FUNC3(sp);
	return ret;
    }

    FUNC5(sp, "\0", 1);
    FUNC4(sp, &data);
    FUNC3(sp);
    *str = data.data;
    return 0;
}