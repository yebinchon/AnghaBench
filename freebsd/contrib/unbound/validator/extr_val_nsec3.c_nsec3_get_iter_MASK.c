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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {int* rr_len; scalar_t__* rr_data; scalar_t__ count; } ;
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(struct ub_packed_rrset_key* rrset, int r)
{
	uint16_t i;
        struct packed_rrset_data* d = (struct packed_rrset_data*)
	        rrset->entry.data;
	FUNC0(d && r < (int)d->count);
	if(d->rr_len[r] < 2+4)
		return 0; /* malformed */
	FUNC1(&i, d->rr_data[r]+2+2, sizeof(i));
	i = FUNC2(i);
	return (size_t)i;
}