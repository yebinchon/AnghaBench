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
typedef  int /*<<< orphan*/  (* ldns_soa_serial_increment_func_t ) (int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT32 ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 

void
FUNC7(ldns_rr *soa, 
		ldns_soa_serial_increment_func_t f, void *data)
{
	ldns_rdf *prev_soa_serial_rdf;
	if ( !soa || !f || FUNC3(soa) != LDNS_RR_TYPE_SOA 
			|| !FUNC4(soa, 2)) {
		return;
	}
	prev_soa_serial_rdf = FUNC5(
		  soa
		, FUNC1(
			  LDNS_RDF_TYPE_INT32
			, (*f)( FUNC2(
					FUNC4(soa, 2))
			      , data
			)
		)
		, 2
	);
	FUNC0(prev_soa_serial_rdf);
}