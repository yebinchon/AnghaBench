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
 int /*<<< orphan*/  rmtape ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(const char *cmd, const char *buf)
{

	if (FUNC3(rmtape, buf, FUNC2(buf)) != FUNC2(buf))
		FUNC0(0);
	return (FUNC1(cmd));
}