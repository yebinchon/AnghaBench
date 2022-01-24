#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_uint16_t ;
struct TYPE_5__ {scalar_t__ used; scalar_t__ length; } ;
typedef  TYPE_1__ isc_buffer_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void
FUNC3(isc_buffer_t *b, isc_uint16_t val) {
	FUNC2(FUNC0(b));
	FUNC2(b->used + 2 <= b->length);

	FUNC1(b, val);
}