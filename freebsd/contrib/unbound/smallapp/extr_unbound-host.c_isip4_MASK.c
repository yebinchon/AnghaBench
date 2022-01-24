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
typedef  scalar_t__ uint8_t ;
struct in_addr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(const char* nm, char** res)
{
	struct in_addr addr;
	/* ddd.ddd.ddd.ddd.in-addr.arpa. is less than 32 */
	char buf[32];
	if(FUNC0(AF_INET, nm, &addr) <= 0) {
		return 0;
	}
	FUNC1(buf, sizeof(buf), "%u.%u.%u.%u.in-addr.arpa",
		(unsigned)((uint8_t*)&addr)[3], (unsigned)((uint8_t*)&addr)[2],
		(unsigned)((uint8_t*)&addr)[1], (unsigned)((uint8_t*)&addr)[0]);
	*res = FUNC2(buf);
	return 1;
}