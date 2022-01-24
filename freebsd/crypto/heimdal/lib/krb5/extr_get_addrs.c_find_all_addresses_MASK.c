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
struct sockaddr {int dummy; } ;
struct ifaddrs {int ifa_flags; int /*<<< orphan*/ * ifa_addr; struct ifaddrs* ifa_next; } ;
typedef  int /*<<< orphan*/  sa_zero ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {unsigned int len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ krb5_addresses ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ ENXIO ; 
 int EXTRA_ADDRESSES ; 
 int IFF_LOOPBACK ; 
 int IFF_UP ; 
 int LOOP ; 
 int LOOP_IF_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddrs*) ; 
 int FUNC4 (struct ifaddrs**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 

__attribute__((used)) static krb5_error_code
FUNC16 (krb5_context context, krb5_addresses *res, int flags)
{
    struct sockaddr sa_zero;
    struct ifaddrs *ifa0, *ifa;
    krb5_error_code ret = ENXIO;
    unsigned int num, idx;
    krb5_addresses ignore_addresses;

    if (FUNC4(&ifa0) == -1) {
	ret = errno;
	FUNC9(context, ret, "getifaddrs: %s", FUNC15(ret));
	return (ret);
    }

    FUNC14(&sa_zero, 0, sizeof(sa_zero));

    /* First, count all the ifaddrs. */
    for (ifa = ifa0, num = 0; ifa != NULL; ifa = ifa->ifa_next, num++)
	/* nothing */;

    if (num == 0) {
	FUNC3(ifa0);
	FUNC9(context, ENXIO, FUNC0("no addresses found", ""));
	return (ENXIO);
    }

    if (flags & EXTRA_ADDRESSES) {
	/* we'll remove the addresses we don't care about */
	ret = FUNC8(context, &ignore_addresses);
	if(ret)
	    return ret;
    }

    /* Allocate storage for them. */
    res->val = FUNC1(num, sizeof(*res->val));
    if (res->val == NULL) {
	FUNC7(context, &ignore_addresses);
	FUNC3(ifa0);
	FUNC9(context, ENOMEM, FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }

    /* Now traverse the list. */
    for (ifa = ifa0, idx = 0; ifa != NULL; ifa = ifa->ifa_next) {
	if ((ifa->ifa_flags & IFF_UP) == 0)
	    continue;
	if (ifa->ifa_addr == NULL)
	    continue;
	if (FUNC13(ifa->ifa_addr, &sa_zero, sizeof(sa_zero)) == 0)
	    continue;
	if (FUNC12(ifa->ifa_addr))
	    continue;
	if (FUNC11(ifa->ifa_addr) && (flags & LOOP) == 0)
	    /* We'll deal with the LOOP_IF_NONE case later. */
	    continue;

	ret = FUNC10(context, ifa->ifa_addr, &res->val[idx]);
	if (ret) {
	    /*
	     * The most likely error here is going to be "Program
	     * lacks support for address type".  This is no big
	     * deal -- just continue, and we'll listen on the
	     * addresses who's type we *do* support.
	     */
	    continue;
	}
	/* possibly skip this address? */
	if((flags & EXTRA_ADDRESSES) &&
	   FUNC5(context, &res->val[idx], &ignore_addresses)) {
	    FUNC6(context, &res->val[idx]);
	    flags &= ~LOOP_IF_NONE; /* we actually found an address,
                                       so don't add any loop-back
                                       addresses */
	    continue;
	}

	idx++;
    }

    /*
     * If no addresses were found, and LOOP_IF_NONE is set, then find
     * the loopback addresses and add them to our list.
     */
    if ((flags & LOOP_IF_NONE) != 0 && idx == 0) {
	for (ifa = ifa0; ifa != NULL; ifa = ifa->ifa_next) {
	    if ((ifa->ifa_flags & IFF_UP) == 0)
		continue;
	    if (ifa->ifa_addr == NULL)
		continue;
	    if (FUNC13(ifa->ifa_addr, &sa_zero, sizeof(sa_zero)) == 0)
		continue;
	    if (FUNC12(ifa->ifa_addr))
		continue;
	    if (!FUNC11(ifa->ifa_addr))
		continue;
	    if ((ifa->ifa_flags & IFF_LOOPBACK) == 0)
		/* Presumably loopback addrs are only used on loopback ifs! */
		continue;
	    ret = FUNC10(context,
					ifa->ifa_addr, &res->val[idx]);
	    if (ret)
		continue; /* We don't consider this failure fatal */
	    if((flags & EXTRA_ADDRESSES) &&
	       FUNC5(context, &res->val[idx],
				   &ignore_addresses)) {
		FUNC6(context, &res->val[idx]);
		continue;
	    }
	    idx++;
	}
    }

    if (flags & EXTRA_ADDRESSES)
	FUNC7(context, &ignore_addresses);
    FUNC3(ifa0);
    if (ret) {
	FUNC2(res->val);
	res->val = NULL;
    } else
	res->len = idx;        /* Now a count. */
    return (ret);
}