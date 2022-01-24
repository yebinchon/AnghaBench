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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4(int status)
{
	int st = status & 0xff;
	char mad_err_str[64] = { 0 };
	char sa_err_str[64] = { 0 };

	if (st)
		FUNC3(mad_err_str, " (%s; %s; %s)",
			(st & 0x1) ? "BUSY" : "",
			(st & 0x2) ? "Redirection Required" : "",
			FUNC1(st>>2));


	st = status >> 8;
	if (st)
		FUNC3(sa_err_str, " SA(%s)", FUNC2((uint8_t) st));

	FUNC0(stderr, "ERROR: Query result returned 0x%04x, %s%s\n",
		status, mad_err_str, sa_err_str);
}