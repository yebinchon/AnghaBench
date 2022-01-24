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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hdb_master_key ;
struct TYPE_3__ {int hdb_master_key_set; int /*<<< orphan*/  hdb_master_key; } ;
typedef  TYPE_1__ HDB ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC2 (krb5_context context,
			HDB *db,
			const char *keyfile)
{
    hdb_master_key key;
    krb5_error_code ret;

    ret = FUNC0(context, keyfile, &key);
    if (ret) {
	if (ret != ENOENT)
	    return ret;
	FUNC1(context);
	return 0;
    }
    db->hdb_master_key = key;
    db->hdb_master_key_set = 1;
    return ret;
}