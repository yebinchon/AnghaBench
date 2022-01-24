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
struct buf_pr {size_t size; size_t avail; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct buf_pr*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct buf_pr *b, size_t size)
{
	FUNC1(b, 0, sizeof(struct buf_pr));

	if ((b->buf = FUNC0(1, size)) == NULL)
		return (ENOMEM);

	b->ptr = b->buf;
	b->size = size;
	b->avail = b->size;

	return (0);
}