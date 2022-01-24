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
typedef  int /*<<< orphan*/  krb5_kt_cursor ;
struct TYPE_6__ {int /*<<< orphan*/  keyblock; } ;
typedef  TYPE_1__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_2__* hdb_master_key ;
struct TYPE_7__ {struct TYPE_7__* next; int /*<<< orphan*/  crypto; TYPE_1__ keytab; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 TYPE_2__* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context, const char *filename,
		   hdb_master_key *mkey)
{
    krb5_error_code ret;
    krb5_keytab id;
    krb5_kt_cursor cursor;
    krb5_keytab_entry entry;
    hdb_master_key p;

    ret = FUNC5(context, filename, &id);
    if(ret)
	return ret;

    ret = FUNC6(context, id, &cursor);
    if(ret)
	goto out;
    *mkey = NULL;
    while(FUNC4(context, id, &entry, &cursor) == 0) {
	p = FUNC0(1, sizeof(*p));
	if(p == NULL) {
	    FUNC3(context, id, &cursor);
	    ret = ENOMEM;
	    goto out;
	}
	p->keytab = entry;
	ret = FUNC1(context, &p->keytab.keyblock, 0, &p->crypto);
	p->next = *mkey;
	*mkey = p;
    }
    FUNC3(context, id, &cursor);
  out:
    FUNC2(context, id);
    return ret;
}