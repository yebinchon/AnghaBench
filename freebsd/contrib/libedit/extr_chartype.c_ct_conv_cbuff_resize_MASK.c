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
struct TYPE_3__ {size_t csize; int /*<<< orphan*/ * cbuff; } ;
typedef  TYPE_1__ ct_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(ct_buffer_t *conv, size_t csize)
{
	void *p;

	if (csize <= conv->csize)
		return 0;

	conv->csize = csize;

	p = FUNC1(conv->cbuff, conv->csize * sizeof(*conv->cbuff));
	if (p == NULL) {
		conv->csize = 0;
		FUNC0(conv->cbuff);
		conv->cbuff = NULL;
		return -1;
	}
	conv->cbuff = p;
	return 0;
}