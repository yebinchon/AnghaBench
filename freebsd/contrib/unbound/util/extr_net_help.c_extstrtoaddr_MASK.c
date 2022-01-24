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
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int MAX_ADDR_STRLEN ; 
 int UNBOUND_DNS_PORT ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char const*,int,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

int 
FUNC5(const char* str, struct sockaddr_storage* addr,
	socklen_t* addrlen)
{
	char* s;
	int port = UNBOUND_DNS_PORT;
	if((s=FUNC2(str, '@'))) {
		char buf[MAX_ADDR_STRLEN];
		if(s-str >= MAX_ADDR_STRLEN) {
			return 0;
		}
		(void)FUNC4(buf, str, sizeof(buf));
		buf[s-str] = 0;
		port = FUNC0(s+1);
		if(port == 0 && FUNC3(s+1,"0")!=0) {
			return 0;
		}
		return FUNC1(buf, port, addr, addrlen);
	}
	return FUNC1(str, port, addr, addrlen);
}