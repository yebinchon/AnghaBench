#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
typedef  TYPE_1__ ldns_output_format ;
struct TYPE_8__ {scalar_t__ names; scalar_t__ soa; } ;
typedef  TYPE_2__ ldns_dnssec_zone ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LDNS_COMMENT_LAYOUT ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__ const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(FILE *out, const ldns_output_format *fmt,
	       const ldns_dnssec_zone *zone)
{
	if (zone) {
		if (zone->soa) {
			if ((fmt->flags & LDNS_COMMENT_LAYOUT)) {
				FUNC0(out, ";; Zone: ");
				FUNC5(out, FUNC2(
							zone->soa));
				FUNC0(out, "\n;\n");
			}
			FUNC3(out, fmt,
					FUNC1(
						zone->soa, 
						LDNS_RR_TYPE_SOA), 
					false);
			if ((fmt->flags & LDNS_COMMENT_LAYOUT))
				FUNC0(out, ";\n");
		}

		if (zone->names) {
			FUNC4(out, fmt, 
					zone->names, false);
		}
	}
}