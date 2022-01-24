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
struct hdb_master_key_data {struct hdb_master_key_data* next; scalar_t__ crypto; int /*<<< orphan*/  keytab; } ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  struct hdb_master_key_data* hdb_master_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hdb_master_key_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(krb5_context context, hdb_master_key mkey)
{
    struct hdb_master_key_data *ptr;
    while(mkey) {
	FUNC2(context, &mkey->keytab);
	if (mkey->crypto)
	    FUNC1(context, mkey->crypto);
	ptr = mkey;
	mkey = mkey->next;
	FUNC0(ptr);
    }
}