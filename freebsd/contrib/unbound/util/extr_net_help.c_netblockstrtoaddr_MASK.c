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
 int /*<<< orphan*/  FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

int FUNC8(const char* str, int port, struct sockaddr_storage* addr,
        socklen_t* addrlen, int* net)
{
	char buf[64];
	char* s;
	*net = (FUNC4(str)?128:32);
	if((s=FUNC5(str, '/'))) {
		if(FUNC1(s+1) > *net) {
			FUNC3("netblock too large: %s", str);
			return 0;
		}
		*net = FUNC1(s+1);
		if(*net == 0 && FUNC6(s+1, "0") != 0) {
			FUNC3("cannot parse netblock: '%s'", str);
			return 0;
		}
		FUNC7(buf, str, sizeof(buf));
		s = FUNC5(buf, '/');
		if(s) *s = 0;
		s = buf;
	}
	if(!FUNC2(s?s:str, port, addr, addrlen)) {
		FUNC3("cannot parse ip address: '%s'", str);
		return 0;
	}
	if(s) {
		FUNC0(addr, *addrlen, *net);
	}
	return 1;
}