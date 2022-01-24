#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct write_state {int niovecs; int allociovecs; int maxiovecs; TYPE_1__* iovecs; int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {size_t iov_len; void* iov_base; } ;

/* Variables and functions */
 scalar_t__ STEP ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC4 (struct write_state *w, void *v, size_t len)
{
    if(w->niovecs == w->allociovecs) {
	if(w->niovecs == w->maxiovecs) {
	    if(FUNC3 (w->fd, w->iovecs, w->niovecs) < 0)
		FUNC1(1, "writev");
	    w->niovecs = 0;
	} else {
	    w->allociovecs = FUNC2(w->allociovecs + STEP, w->maxiovecs);
	    w->iovecs = FUNC0 (w->iovecs,
				  w->allociovecs * sizeof(*w->iovecs));
	}
    }
    w->iovecs[w->niovecs].iov_base = v;
    w->iovecs[w->niovecs].iov_len  = len;
    ++w->niovecs;
}