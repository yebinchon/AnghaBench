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
struct process {int /*<<< orphan*/  p_flags; } ;
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  PNOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 struct process* FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(Char **v, struct command *c)
{
    struct process *pp;

    FUNC0(c);
    pp = FUNC1(*++v);
    pp->p_flags |= PNOTIFY;
}