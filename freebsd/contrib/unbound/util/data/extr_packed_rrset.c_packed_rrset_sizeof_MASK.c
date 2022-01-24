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
typedef  int /*<<< orphan*/  uint8_t ;
struct packed_rrset_data {int rrsig_count; int count; int* rr_len; scalar_t__* rr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

size_t 
FUNC1(struct packed_rrset_data* d)
{
	size_t s;
	if(d->rrsig_count > 0) {
		s = ((uint8_t*)d->rr_data[d->count+d->rrsig_count-1] - 
			(uint8_t*)d) + d->rr_len[d->count+d->rrsig_count-1];
	} else {
		FUNC0(d->count > 0);
		s = ((uint8_t*)d->rr_data[d->count-1] - (uint8_t*)d) + 
			d->rr_len[d->count-1];
	}
	return s;
}