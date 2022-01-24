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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_INT32 ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static uint32_t
FUNC6(const ldns_rr *rr)
{
    const ldns_rdf *rdf;
  
    if (FUNC3(rr) != LDNS_RR_TYPE_SOA) return 0;
    if (FUNC4(rr) != 7) return 0;
    rdf = FUNC5(rr, 2);
    if (FUNC1(rdf) != LDNS_RDF_TYPE_INT32) return 0;
    if (FUNC2(rdf) != 4) return 0;
    return FUNC0(rdf);
}