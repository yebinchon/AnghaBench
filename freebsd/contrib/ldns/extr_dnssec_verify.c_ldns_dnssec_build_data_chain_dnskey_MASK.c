#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  const ldns_pkt ;
struct TYPE_5__ {TYPE_1__* parent; scalar_t__ parent_type; int /*<<< orphan*/  signatures; } ;
typedef  TYPE_2__ ldns_dnssec_data_chain ;
struct TYPE_4__ {void* packet_qtype; } ;

/* Variables and functions */
 void* LDNS_RR_TYPE_DNSKEY ; 
 int /*<<< orphan*/  LDNS_SECTION_ANY_NOQUESTION ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(ldns_resolver *res,
					    uint16_t qflags,
					    const ldns_pkt *pkt,
					    ldns_rr_list *signatures,
						ldns_dnssec_data_chain *new_chain,
						ldns_rdf *key_name,
						ldns_rr_class c) {
	ldns_rr_list *keys;
	ldns_pkt *my_pkt;
	if (signatures && FUNC6(signatures) > 0) {
		new_chain->signatures = FUNC4(signatures);
		new_chain->parent_type = 0;

		keys = FUNC2(
				  pkt,
				 key_name,
				 LDNS_RR_TYPE_DNSKEY,
				 LDNS_SECTION_ANY_NOQUESTION
			  );
		if (!keys) {
			my_pkt = FUNC3(res,
									key_name,
									LDNS_RR_TYPE_DNSKEY,
									c,
									qflags);
			if (my_pkt) {
			keys = FUNC2(
					  my_pkt,
					 key_name,
					 LDNS_RR_TYPE_DNSKEY,
					 LDNS_SECTION_ANY_NOQUESTION
				  );
			new_chain->parent = FUNC0(res,
													qflags,
													keys,
													my_pkt,
													NULL);
			new_chain->parent->packet_qtype = LDNS_RR_TYPE_DNSKEY;
			FUNC1(my_pkt);
			}
		} else {
			new_chain->parent = FUNC0(res,
													qflags,
													keys,
													pkt,
													NULL);
			new_chain->parent->packet_qtype = LDNS_RR_TYPE_DNSKEY;
		}
		FUNC5(keys);
	}
}