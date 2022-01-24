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
typedef  scalar_t__ u_int ;
typedef  scalar_t__ ServerOpCodes ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ sAuthenticationMethods ; 

__attribute__((used)) static void
FUNC2(ServerOpCodes code, u_int count, char **vals)
{
	u_int i;

	if (count <= 0 && code != sAuthenticationMethods)
		return;
	FUNC1("%s", FUNC0(code));
	for (i = 0; i < count; i++)
		FUNC1(" %s",  vals[i]);
	if (code == sAuthenticationMethods && count == 0)
		FUNC1(" any");
	FUNC1("\n");
}