#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int /*<<< orphan*/  s_addr; } ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_2__ address; int /*<<< orphan*/  addr_type; } ;
typedef  TYPE_1__ krb5_address ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_ADDRESS_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct in_addr*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC6 (krb5_context context, const char *address, krb5_address *addr)
{
    const char *p;
    struct in_addr a;

    p = FUNC4(address, ':');
    if(p) {
	p++;
	if(FUNC5(address, "ip:", p - address) != 0 &&
	   FUNC5(address, "ip4:", p - address) != 0 &&
	   FUNC5(address, "ipv4:", p - address) != 0 &&
	   FUNC5(address, "inet:", p - address) != 0)
	    return -1;
    } else
	p = address;
    if(FUNC1(p, &a) == 0)
	return -1;
    addr->addr_type = KRB5_ADDRESS_INET;
    if(FUNC2(&addr->address, 4) != 0)
	return -1;
    FUNC0(addr->address.data, FUNC3(a.s_addr), addr->address.length);
    return 0;
}