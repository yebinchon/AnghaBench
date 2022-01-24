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
struct addrinfo {int ai_family; int ai_flags; int /*<<< orphan*/ * ai_next; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hints ;
struct TYPE_2__ {int address_family; } ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int AI_NUMERICHOST ; 
 int AI_NUMERICSERV ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 scalar_t__ FUNC2 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ options ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC6(const char *name)
{
	char strport[NI_MAXSERV];
	struct addrinfo hints, *res;

	if (FUNC3(name))
		return 1;

	FUNC5(strport, sizeof strport, "%u", FUNC0());
	FUNC4(&hints, 0, sizeof(hints));
	hints.ai_family = options.address_family == -1 ?
	    AF_UNSPEC : options.address_family;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_NUMERICHOST|AI_NUMERICSERV;
	if (FUNC2(name, strport, &hints, &res) != 0)
		return 0;
	if (res == NULL || res->ai_next != NULL) {
		FUNC1(res);
		return 0;
	}
	FUNC1(res);
	return 1;
}