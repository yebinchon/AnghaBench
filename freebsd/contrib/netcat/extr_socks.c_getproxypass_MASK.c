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
typedef  int /*<<< orphan*/  pw ;
typedef  int /*<<< orphan*/  prompt ;

/* Variables and functions */
 int /*<<< orphan*/  RPP_REQUIRE_TTY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static const char *
FUNC3(const char *proxyuser, const char *proxyhost)
{
	char prompt[512];
	static char pw[256];

	FUNC2(prompt, sizeof(prompt), "Proxy password for %s@%s: ",
	   proxyuser, proxyhost);
	if (FUNC1(prompt, pw, sizeof(pw), RPP_REQUIRE_TTY) == NULL)
		FUNC0(1, "Unable to read proxy passphrase");
	return (pw);
}