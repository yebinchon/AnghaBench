#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_3__ address; void* addr_type; } ;
typedef  TYPE_1__ krb5_address ;

/* Variables and functions */
 void* KRB5_ADDRESS_INET ; 
 int KRB5_PROG_ATYPE_NOSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC6(krb5_context context, const krb5_address *inaddr,
		   unsigned long len, krb5_address *low, krb5_address *high)
{
    unsigned long ia;
    uint32_t l, h, m = 0xffffffff;

    if (len > 32) {
	FUNC5(context, KRB5_PROG_ATYPE_NOSUPP,
			       FUNC0("IPv4 prefix too large (%ld)", "len"), len);
	return KRB5_PROG_ATYPE_NOSUPP;
    }
    m = m << (32 - len);

    FUNC1(inaddr->address.data, &ia, inaddr->address.length);

    l = ia & m;
    h = l | ~m;

    low->addr_type = KRB5_ADDRESS_INET;
    if(FUNC3(&low->address, 4) != 0)
	return -1;
    FUNC2(low->address.data, l, low->address.length);

    high->addr_type = KRB5_ADDRESS_INET;
    if(FUNC3(&high->address, 4) != 0) {
	FUNC4(context, low);
	return -1;
    }
    FUNC2(high->address.data, h, high->address.length);

    return 0;
}