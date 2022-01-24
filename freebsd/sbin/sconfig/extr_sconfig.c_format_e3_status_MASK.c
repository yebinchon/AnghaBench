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
 unsigned long E3_LOS ; 
 unsigned long E3_TXE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static char *
FUNC1 (unsigned long status)
{
	static char buf [80];

	buf[0] = 0;
	if (status & E3_LOS)     FUNC0 (buf, ",LOS");
	if (status & E3_TXE)     FUNC0 (buf, ",XMIT");
	if (buf[0] == ',')
		return buf+1;
	return "Ok";
}