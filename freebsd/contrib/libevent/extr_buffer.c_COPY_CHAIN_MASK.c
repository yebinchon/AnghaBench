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
struct evbuffer {int /*<<< orphan*/  total_len; int /*<<< orphan*/  last; int /*<<< orphan*/ * last_with_datap; int /*<<< orphan*/  first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 

__attribute__((used)) static inline void
FUNC1(struct evbuffer *dst, struct evbuffer *src)
{
	FUNC0(dst);
	FUNC0(src);
	dst->first = src->first;
	if (src->last_with_datap == &src->first)
		dst->last_with_datap = &dst->first;
	else
		dst->last_with_datap = src->last_with_datap;
	dst->last = src->last;
	dst->total_len = src->total_len;
}