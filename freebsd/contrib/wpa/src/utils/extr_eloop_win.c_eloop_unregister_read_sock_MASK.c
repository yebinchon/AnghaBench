#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct eloop_sock {int dummy; } ;
struct TYPE_5__ {size_t reader_count; int reader_table_changed; TYPE_1__* readers; } ;
struct TYPE_4__ {int sock; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ eloop ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,size_t) ; 

void FUNC3(int sock)
{
	size_t i;

	if (eloop.readers == NULL || eloop.reader_count == 0)
		return;

	for (i = 0; i < eloop.reader_count; i++) {
		if (eloop.readers[i].sock == sock)
			break;
	}
	if (i == eloop.reader_count)
		return;

	FUNC1(eloop.readers[i].sock, eloop.readers[i].event, 0);
	FUNC0(eloop.readers[i].event);

	if (i != eloop.reader_count - 1) {
		FUNC2(&eloop.readers[i], &eloop.readers[i + 1],
			   (eloop.reader_count - i - 1) *
			   sizeof(struct eloop_sock));
	}
	eloop.reader_count--;
	eloop.reader_table_changed = 1;
}