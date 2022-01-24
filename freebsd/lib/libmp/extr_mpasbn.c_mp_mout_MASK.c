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
typedef  int /*<<< orphan*/  MINT ;

/* Variables and functions */
 char* FUNC0 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

void
FUNC3(const MINT *mp)
{
	char *s;

	s = FUNC0("mout", mp);
	FUNC2("%s", s);
	FUNC1(s);
}