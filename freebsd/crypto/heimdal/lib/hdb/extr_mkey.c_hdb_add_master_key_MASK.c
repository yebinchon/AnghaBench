#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_2__* hdb_master_key ;
struct TYPE_5__ {int /*<<< orphan*/  vno; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ keytab; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

krb5_error_code
FUNC2(krb5_context context, krb5_keyblock *key,
		   hdb_master_key *inout)
{
    int vno = 0;
    hdb_master_key p;
    krb5_error_code ret;

    for(p = *inout; p; p = p->next)
	vno = FUNC1(vno, p->keytab.vno);
    vno++;
    ret = FUNC0(context, vno, key, 0, &p);
    if(ret)
	return ret;
    p->next = *inout;
    *inout = p;
    return 0;
}