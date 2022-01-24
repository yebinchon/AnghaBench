#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* _name; } ;
typedef  TYPE_1__ ldns_rr_descriptor ;
typedef  int /*<<< orphan*/  ldns_output_format ;
struct TYPE_8__ {char* name; } ;
typedef  TYPE_2__ ldns_lookup_table ;
struct TYPE_9__ {scalar_t__ packet_qtype; int /*<<< orphan*/  signatures; int /*<<< orphan*/  rrset; scalar_t__ packet_nodata; scalar_t__ packet_rcode; struct TYPE_9__* parent; } ;
typedef  TYPE_3__ ldns_dnssec_data_chain ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ldns_rcodes ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(FILE *out, const ldns_output_format *fmt,
		const ldns_dnssec_data_chain *chain)
{
	ldns_lookup_table *rcode;
	const ldns_rr_descriptor *rr_descriptor;
	if (chain) {
		FUNC5(out, fmt, chain->parent);
		if (FUNC4(chain->rrset) > 0) {
			rcode = FUNC1(ldns_rcodes,
								 (int) chain->packet_rcode);
			if (rcode) {
				FUNC0(out, ";; rcode: %s\n", rcode->name);
			}

			rr_descriptor = FUNC2(chain->packet_qtype);
			if (rr_descriptor && rr_descriptor->_name) {
				FUNC0(out, ";; qtype: %s\n", rr_descriptor->_name);
			} else if (chain->packet_qtype != 0) {
				FUNC0(out, "TYPE%u", 
					   chain->packet_qtype);
			}
			if (chain->packet_nodata) {
				FUNC0(out, ";; NODATA response\n");
			}
			FUNC0(out, "rrset:\n");
			FUNC3(out, fmt, chain->rrset);
			FUNC0(out, "sigs:\n");
			FUNC3(out, fmt, chain->signatures);
			FUNC0(out, "---\n");
		} else {
			FUNC0(out, "<no data>\n");
		}
	}
}