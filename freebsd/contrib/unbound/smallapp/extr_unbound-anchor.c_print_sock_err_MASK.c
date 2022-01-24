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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ verb ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char* msg)
{
#ifndef USE_WINSOCK
	if(verb) FUNC1("%s: %s\n", msg, FUNC2(errno));
#else
	if(verb) printf("%s: %s\n", msg, wsa_strerror(WSAGetLastError()));
#endif
}