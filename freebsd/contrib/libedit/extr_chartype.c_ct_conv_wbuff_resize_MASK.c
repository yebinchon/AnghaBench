#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t wsize; int /*<<< orphan*/ * wbuff; } ;
typedef  TYPE_1__ ct_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(ct_buffer_t *conv, size_t wsize)
{
	void *p;

	if (wsize <= conv->wsize)
		return 0;

	conv->wsize = wsize;

	p = FUNC1(conv->wbuff, conv->wsize * sizeof(*conv->wbuff));
	if (p == NULL) {
		conv->wsize = 0;
		FUNC0(conv->wbuff);
		conv->wbuff = NULL;
		return -1;
	}
	conv->wbuff = p;
	return 0;
}