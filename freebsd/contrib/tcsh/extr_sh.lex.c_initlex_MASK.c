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
struct wordent {struct wordent* next; struct wordent* prev; int /*<<< orphan*/  word; } ;

/* Variables and functions */
 int /*<<< orphan*/  STRNULL ; 

void
FUNC0(struct wordent *vp)
{
	vp->word = STRNULL;
	vp->prev = vp;
	vp->next = vp;
}