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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sigaction*,int) ; 

int
FUNC2(int sig)
{
	struct sigaction sa;

	FUNC1(&sa, sizeof(sa));
	sa.sa_handler = SIG_IGN;
	return (FUNC0(sig, &sa, NULL));
}