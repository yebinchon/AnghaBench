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
struct arange {int /*<<< orphan*/  low; int /*<<< orphan*/  high; } ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_7__ {struct arange* data; } ;
struct TYPE_6__ {TYPE_2__ address; int /*<<< orphan*/  addr_type; } ;
typedef  TYPE_1__ krb5_address ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_ADDRESS_ARANGE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4 (krb5_context context, const krb5_address *inaddr,
	     krb5_address *outaddr)
{
    krb5_error_code ret;
    struct arange *i, *o;

    outaddr->addr_type = KRB5_ADDRESS_ARANGE;
    ret = FUNC1(&outaddr->address, sizeof(*o));
    if(ret)
	return ret;
    i = inaddr->address.data;
    o = outaddr->address.data;
    ret = FUNC0(context, &i->low, &o->low);
    if(ret) {
	FUNC2(&outaddr->address);
	return ret;
    }
    ret = FUNC0(context, &i->high, &o->high);
    if(ret) {
	FUNC3(context, &o->low);
	FUNC2(&outaddr->address);
	return ret;
    }
    return 0;
}