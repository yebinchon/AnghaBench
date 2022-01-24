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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_SIZE_DOUBLEWORD ; 
 scalar_t__ LDNS_RDF_TYPE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

time_t
FUNC5(const ldns_rdf *rd)
{
	uint32_t data;

	/* only allow 32 bit rdfs */
	if (FUNC2(rd) != LDNS_RDF_SIZE_DOUBLEWORD ||
			FUNC1(rd) != LDNS_RDF_TYPE_TIME) {
		return 0;
	}
	FUNC3(&data, FUNC0(rd), sizeof(data));
	return (time_t)FUNC4(data);
}