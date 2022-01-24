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
struct rc_state {int /*<<< orphan*/  c; scalar_t__ ssl; } ;
struct daemon_remote {int /*<<< orphan*/  active; int /*<<< orphan*/  busy_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct daemon_remote* rc, struct rc_state* s)
{
	FUNC4(&rc->busy_list, s->c);
	rc->active --;
	if(s->ssl) {
		FUNC1(s->ssl);
		FUNC0(s->ssl);
	}
	FUNC2(s->c);
	FUNC3(s);
}