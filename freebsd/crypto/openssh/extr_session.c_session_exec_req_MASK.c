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
typedef  int u_int ;
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  Session ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ssh*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int*) ; 

__attribute__((used)) static int
FUNC4(struct ssh *ssh, Session *s)
{
	u_int len, success;

	char *command = FUNC3(&len);
	FUNC2();
	success = FUNC0(ssh, s, command) == 0;
	FUNC1(command);
	return success;
}