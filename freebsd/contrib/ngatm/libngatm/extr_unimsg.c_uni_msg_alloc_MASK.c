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
struct uni_msg {int /*<<< orphan*/ * b_buf; int /*<<< orphan*/ * b_lim; int /*<<< orphan*/ * b_wptr; int /*<<< orphan*/ * b_rptr; } ;

/* Variables and functions */
 scalar_t__ EXTRA ; 
 int /*<<< orphan*/  FUNC0 (struct uni_msg*) ; 
 void* FUNC1 (size_t) ; 

struct uni_msg *
FUNC2(size_t s)
{
	struct uni_msg *m;

	s += EXTRA;

	if ((m = FUNC1(sizeof(struct uni_msg))) == NULL)
		return NULL;
	if ((m->b_buf = FUNC1(s)) == NULL) {
		FUNC0(m);
		return (NULL);
	}
	m->b_rptr = m->b_wptr = m->b_buf;
	m->b_lim = m->b_buf + s;
	return (m);
}