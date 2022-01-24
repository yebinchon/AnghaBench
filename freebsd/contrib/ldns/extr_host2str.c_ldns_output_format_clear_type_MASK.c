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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_type ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  bitmap; } ;
typedef  TYPE_1__ ldns_output_format_storage ;
typedef  int /*<<< orphan*/  ldns_output_format ;

/* Variables and functions */
 int LDNS_FMT_RFC3597 ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC4(ldns_output_format* fmt, ldns_rr_type t)
{
	ldns_output_format_storage* fmt_st = (ldns_output_format_storage*)fmt;
	ldns_status s;
	
	FUNC0(fmt != NULL);

	if (!(fmt_st->flags & LDNS_FMT_RFC3597)) {
		FUNC2(fmt, LDNS_FMT_RFC3597);
	}
	if (! fmt_st->bitmap) {
		s = FUNC3(&fmt_st->bitmap);
		if (s != LDNS_STATUS_OK) {
			return s;
		}
	}
	return FUNC1(fmt_st->bitmap, t);
}