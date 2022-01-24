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
struct callback {struct callback* cb_next; void* cb_arg; int /*<<< orphan*/ * cb_func; } ;
typedef  int /*<<< orphan*/  callback_func ;

/* Variables and functions */
 struct callback* callbacks ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct callback* FUNC1 (int) ; 

void
FUNC2(callback_func *func, void *arg)
{
	struct callback *cb;

	cb = FUNC1(sizeof(struct callback));
	if (cb == NULL)
		FUNC0(1, "unable to allocate memory for callback");
	cb->cb_func = func;
	cb->cb_arg = arg;
	cb->cb_next = callbacks;
	callbacks = cb;
}