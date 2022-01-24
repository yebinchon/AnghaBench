#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * mctx; } ;
typedef  TYPE_1__ isc_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int) ; 

void
FUNC4(isc_buffer_t **dynbuffer) {
	unsigned int real_length;
	isc_buffer_t *dbuf;
	isc_mem_t *mctx;

	FUNC1(dynbuffer != NULL);
	FUNC1(FUNC0(*dynbuffer));
	FUNC1((*dynbuffer)->mctx != NULL);

	dbuf = *dynbuffer;
	*dynbuffer = NULL;	/* destroy external reference */

	real_length = dbuf->length + sizeof(isc_buffer_t);
	mctx = dbuf->mctx;
	dbuf->mctx = NULL;
	FUNC2(dbuf);

	FUNC3(mctx, dbuf, real_length);
}