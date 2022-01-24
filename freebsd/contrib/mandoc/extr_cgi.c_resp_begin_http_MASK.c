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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC2(int code, const char *msg)
{

	if (200 != code)
		FUNC1("Status: %d %s\r\n", code, msg);

	FUNC1("Content-Type: text/html; charset=utf-8\r\n"
	     "Cache-Control: no-cache\r\n"
	     "Pragma: no-cache\r\n"
	     "\r\n");

	FUNC0(stdout);
}