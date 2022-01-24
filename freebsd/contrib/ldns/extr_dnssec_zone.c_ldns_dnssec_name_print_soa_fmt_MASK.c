#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; } ;
typedef  TYPE_1__ ldns_output_format ;
struct TYPE_9__ {scalar_t__ nsec_signatures; scalar_t__ nsec; int /*<<< orphan*/  name; scalar_t__ rrsets; } ;
typedef  TYPE_2__ ldns_dnssec_name ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LDNS_COMMENT_LAYOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__ const*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(FILE *out, const ldns_output_format *fmt,
		const ldns_dnssec_name *name, 
		bool show_soa)
{
	if (name) {
		if(name->rrsets) {
			FUNC2(out, fmt, 
					name->rrsets, true, show_soa);
		} else if ((fmt->flags & LDNS_COMMENT_LAYOUT)) {
			FUNC0(out, ";; Empty nonterminal: ");
			FUNC3(out, name->name);
			FUNC0(out, "\n");
		}
		if(name->nsec) {
			FUNC4(out, fmt, name->nsec);
		}
		if (name->nsec_signatures) {
			FUNC1(out, fmt, 
					name->nsec_signatures);
		}
	} else if ((fmt->flags & LDNS_COMMENT_LAYOUT)) {
		FUNC0(out, "; <void>\n");
	}
}