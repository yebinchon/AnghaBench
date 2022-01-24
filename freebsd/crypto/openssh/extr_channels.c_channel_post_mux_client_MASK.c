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
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  Channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ssh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ssh *ssh, Channel *c,
    fd_set *readset, fd_set *writeset)
{
	FUNC0(ssh, c, readset, writeset);
	FUNC1(ssh, c, readset, writeset);
}