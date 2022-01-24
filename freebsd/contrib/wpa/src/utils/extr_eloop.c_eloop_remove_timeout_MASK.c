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
struct eloop_timeout {int /*<<< orphan*/  user_data; int /*<<< orphan*/  eloop_data; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eloop ; 
 int /*<<< orphan*/  FUNC1 (struct eloop_timeout*) ; 
 int /*<<< orphan*/  user ; 
 int /*<<< orphan*/  FUNC2 (struct eloop_timeout*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct eloop_timeout *timeout)
{
	FUNC0(&timeout->list);
	FUNC2(timeout, eloop, timeout->eloop_data);
	FUNC2(timeout, user, timeout->user_data);
	FUNC1(timeout);
}