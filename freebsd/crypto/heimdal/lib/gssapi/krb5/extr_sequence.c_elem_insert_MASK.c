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
struct gss_msg_order {unsigned int jitter_window; unsigned int length; int /*<<< orphan*/ * elem; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gss_msg_order*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct gss_msg_order *o,
	    unsigned int after_slot,
	    OM_uint32 seq_num)
{
    FUNC0(o->jitter_window > after_slot);

    if (o->length > after_slot)
	FUNC2(&o->elem[after_slot + 1], &o->elem[after_slot],
		(o->length - after_slot - 1) * sizeof(o->elem[0]));

    FUNC1(o, after_slot, seq_num);

    if (o->length < o->jitter_window)
	o->length++;
}