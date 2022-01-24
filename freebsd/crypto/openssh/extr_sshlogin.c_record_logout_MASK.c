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
struct logininfo {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct logininfo* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct logininfo*) ; 

void
FUNC3(pid_t pid, const char *tty, const char *user)
{
	struct logininfo *li;

	li = FUNC0(pid, user, NULL, tty);
	FUNC2(li);
	FUNC1(li);
}