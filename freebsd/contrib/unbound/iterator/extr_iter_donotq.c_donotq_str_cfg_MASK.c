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
struct sockaddr_storage {int dummy; } ;
struct iter_donotq {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  UNBOUND_DNS_PORT ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct iter_donotq*,struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int
FUNC4(struct iter_donotq* dq, const char* str)
{
	struct sockaddr_storage addr;
	int net;
	socklen_t addrlen;
	FUNC3(VERB_ALGO, "donotq: %s", str);
	if(!FUNC2(str, UNBOUND_DNS_PORT, &addr, &addrlen, &net)) {
		FUNC1("cannot parse donotquery netblock: %s", str);
		return 0;
	}
	if(!FUNC0(dq, &addr, addrlen, net)) {
		FUNC1("out of memory");
		return 0;
	}
	return 1;
}