#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ ldns_output_format ;
struct TYPE_7__ {struct TYPE_7__* next; scalar_t__ rr; } ;
typedef  TYPE_2__ ldns_dnssec_rrs ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LDNS_COMMENT_LAYOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,scalar_t__) ; 

void
FUNC2(FILE *out, const ldns_output_format *fmt,
	       const ldns_dnssec_rrs *rrs)
{
	if (!rrs) {
		if ((fmt->flags & LDNS_COMMENT_LAYOUT))
			FUNC0(out, "; <void>");
	} else {
		if (rrs->rr) {
			FUNC1(out, fmt, rrs->rr);
		}
		if (rrs->next) {
			FUNC2(out, fmt, rrs->next);
		}
	}
}