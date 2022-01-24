#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct afswtch {int /*<<< orphan*/  (* af_settunnel ) (int,struct addrinfo*,struct addrinfo*) ;int /*<<< orphan*/  af_name; } ;
struct addrinfo {TYPE_1__* ai_addr; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (int,struct addrinfo*,struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const char *src, const char *dst, int s, const struct afswtch *afp)
{
	struct addrinfo *srcres, *dstres;
	int ecode;

	if (afp->af_settunnel == NULL) {
		FUNC5("address family %s does not support tunnel setup",
			afp->af_name);
		return;
	}

	if ((ecode = FUNC3(src, NULL, NULL, &srcres)) != 0)
		FUNC0(1, "error in parsing address string: %s",
		    FUNC2(ecode));

	if ((ecode = FUNC3(dst, NULL, NULL, &dstres)) != 0)
		FUNC0(1, "error in parsing address string: %s",
		    FUNC2(ecode));

	if (srcres->ai_addr->sa_family != dstres->ai_addr->sa_family)
		FUNC0(1,
		    "source and destination address families do not match");

	afp->af_settunnel(s, srcres, dstres);

	FUNC1(srcres);
	FUNC1(dstres);
}