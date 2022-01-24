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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1("Syntax:\n", stderr);
	FUNC1("   le-proxy [-s] [-W] <listen-on-addr> <connect-to-addr>\n", stderr);
	FUNC1("Example:\n", stderr);
	FUNC1("   le-proxy 127.0.0.1:8888 1.2.3.4:80\n", stderr);

	FUNC0(1);
}