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
 size_t WRITE_PIPE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * slvpipe ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC3(int type, const char *status)
{
	int len;

	len = FUNC1(status);

	if (FUNC2(slvpipe[WRITE_PIPE], &type, sizeof(int)) < 0)
		FUNC0(1, "command pipe write for message type failed");

	if (FUNC2(slvpipe[WRITE_PIPE], &len, sizeof(int)) < 0)
		FUNC0(1, "command pipe write for message length failed");

	if (FUNC2(slvpipe[WRITE_PIPE], status, len) < 0)
		FUNC0(1, "command pipe write of message data failed");
}