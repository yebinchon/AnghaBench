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
typedef  int /*<<< orphan*/  uid_t ;
struct sockaddr {int dummy; } ;
struct logininfo {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct logininfo* FUNC0 (int /*<<< orphan*/ ,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct logininfo*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

void
FUNC5(pid_t pid, const char *tty, const char *user, uid_t uid,
    const char *host, struct sockaddr *addr, socklen_t addrlen)
{
	struct logininfo *li;

	/* save previous login details before writing new */
	FUNC4(user, uid);

	li = FUNC0(pid, user, host, tty);
	FUNC3(li, addr, addrlen);
	FUNC2(li);
	FUNC1(li);
}