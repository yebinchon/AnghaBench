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
typedef  size_t u_int ;
typedef  int /*<<< orphan*/  OpCodes ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC2(OpCodes code, u_int count, char **vals)
{
	u_int i;

	for (i = 0; i < count; i++)
		FUNC1("%s %s\n", FUNC0(code), vals[i]);
}