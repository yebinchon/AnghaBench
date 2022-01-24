#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ ldns_output_format ;
struct TYPE_8__ {struct TYPE_8__* next; TYPE_6__* signatures; TYPE_6__* rrs; } ;
typedef  TYPE_2__ ldns_dnssec_rrsets ;
struct TYPE_9__ {int /*<<< orphan*/  rr; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LDNS_COMMENT_LAYOUT ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_6__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(FILE *out, const ldns_output_format *fmt,
		const ldns_dnssec_rrsets *rrsets,
		bool follow,
		bool show_soa)
{
	if (!rrsets) {
		if ((fmt->flags & LDNS_COMMENT_LAYOUT))
			FUNC0(out, "; <void>\n");
	} else {
		if (rrsets->rrs &&
		    (show_soa ||
			FUNC2(rrsets->rrs->rr) != LDNS_RR_TYPE_SOA
		    )
		   ) {
			FUNC1(out, fmt, rrsets->rrs);
			if (rrsets->signatures) {
				FUNC1(out, fmt, 
						rrsets->signatures);
			}
		}
		if (follow && rrsets->next) {
			FUNC3(out, fmt, 
					rrsets->next, follow, show_soa);
		}
	}
}