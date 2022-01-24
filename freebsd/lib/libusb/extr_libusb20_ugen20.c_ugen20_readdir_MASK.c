#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int urd_maxlen; int /*<<< orphan*/  urd_data; int /*<<< orphan*/  urd_startentry; } ;
struct ugen20_urd_state {scalar_t__* ptr; scalar_t__* buf; scalar_t__* dummy_zero; scalar_t__ nparsed; void* src; void* dst; TYPE_1__ urd; int /*<<< orphan*/  f; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_READ_DIR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (void*) ; 

__attribute__((used)) static int
FUNC4(struct ugen20_urd_state *st)
{
	;				/* style fix */
repeat:
	if (st->ptr == NULL) {
		st->urd.urd_startentry += st->nparsed;
		st->urd.urd_data = FUNC2(st->buf);
		st->urd.urd_maxlen = sizeof(st->buf);
		st->nparsed = 0;

		if (FUNC1(st->f, FUNC0(USB_READ_DIR), &st->urd)) {
			return (EINVAL);
		}
		st->ptr = st->buf;
	}
	if (st->ptr[0] == 0) {
		if (st->nparsed) {
			st->ptr = NULL;
			goto repeat;
		} else {
			return (ENXIO);
		}
	}
	st->src = (void *)(st->ptr + 1);
	st->dst = st->src + FUNC3(st->src) + 1;
	st->ptr = st->ptr + st->ptr[0];
	st->nparsed++;

	if ((st->ptr < st->buf) ||
	    (st->ptr > st->dummy_zero)) {
		/* invalid entry */
		return (EINVAL);
	}
	return (0);
}