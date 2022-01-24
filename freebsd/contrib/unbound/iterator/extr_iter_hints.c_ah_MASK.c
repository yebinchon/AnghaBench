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
typedef  int /*<<< orphan*/  uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct delegpt {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct delegpt*,int /*<<< orphan*/ *,size_t,struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,size_t*) ; 

__attribute__((used)) static int
FUNC6(struct delegpt* dp, const char* sv, const char* ip)
{
	struct sockaddr_storage addr;
	socklen_t addrlen;
	size_t dname_len;
	uint8_t* dname = FUNC5(sv, &dname_len);
	if(!dname) {
		FUNC4("could not parse %s", sv);
		return 0;
	}
	if(!FUNC0(dp, dname, 0) ||
	   !FUNC2(ip, &addr, &addrlen) ||
	   !FUNC1(dp, dname, dname_len,
		&addr, addrlen, 0, 0)) {
		FUNC3(dname);
		return 0;
	}
	FUNC3(dname);
	return 1;
}