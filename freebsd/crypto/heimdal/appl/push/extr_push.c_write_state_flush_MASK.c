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
struct write_state {scalar_t__ niovecs; int /*<<< orphan*/  iovecs; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2 (struct write_state *w)
{
    if (w->niovecs) {
	if (FUNC1 (w->fd, w->iovecs, w->niovecs) < 0)
	    FUNC0 (1, "writev");
	w->niovecs = 0;
    }
}