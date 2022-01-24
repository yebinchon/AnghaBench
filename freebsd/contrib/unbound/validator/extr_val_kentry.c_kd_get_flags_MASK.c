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
typedef  int /*<<< orphan*/  uint16_t ;
struct packed_rrset_data {int* rr_len; scalar_t__* rr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t
FUNC2(struct packed_rrset_data* data, size_t idx)
{
	uint16_t f;
	if(data->rr_len[idx] < 2+2)
		return 0;
	FUNC0(&f, data->rr_data[idx]+2, 2);
	f = FUNC1(f);
	return f;
}