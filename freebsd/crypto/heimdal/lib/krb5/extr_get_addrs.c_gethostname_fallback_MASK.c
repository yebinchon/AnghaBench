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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hostent {int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; int /*<<< orphan*/  h_addrtype; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {int len; TYPE_2__* val; } ;
typedef  TYPE_1__ krb5_addresses ;
typedef  int /*<<< orphan*/  hostname ;
struct TYPE_8__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {TYPE_3__ address; int /*<<< orphan*/  addr_type; } ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,char*,...) ; 
 TYPE_2__* FUNC5 (int) ; 
 struct hostent* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static krb5_error_code
FUNC8 (krb5_context context, krb5_addresses *res)
{
    krb5_error_code ret;
    char hostname[MAXHOSTNAMELEN];
    struct hostent *hostent;

    if (FUNC2 (hostname, sizeof(hostname))) {
	ret = errno;
	FUNC4(context, ret, "gethostname: %s", FUNC7(ret));
	return ret;
    }
    hostent = FUNC6 (hostname);
    if (hostent == NULL) {
	ret = errno;
	FUNC4 (context, ret, "gethostbyname %s: %s",
				hostname, FUNC7(ret));
	return ret;
    }
    res->len = 1;
    res->val = FUNC5 (sizeof(*res->val));
    if (res->val == NULL) {
	FUNC4(context, ENOMEM, FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    res->val[0].addr_type = hostent->h_addrtype;
    res->val[0].address.data = NULL;
    res->val[0].address.length = 0;
    ret = FUNC3 (&res->val[0].address,
			  hostent->h_addr,
			  hostent->h_length);
    if (ret) {
	FUNC1 (res->val);
	return ret;
    }
    return 0;
}