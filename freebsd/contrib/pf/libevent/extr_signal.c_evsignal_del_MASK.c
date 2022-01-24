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
struct sigaction {int dummy; } ;
struct event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct event*) ; 
 scalar_t__ SIG_DFL ; 
 int FUNC1 (int,struct sigaction*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct event *ev)
{
	int evsignal;

	evsignal = FUNC0(ev);

	return (FUNC1(FUNC0(ev),(struct sigaction *)SIG_DFL, NULL));
}