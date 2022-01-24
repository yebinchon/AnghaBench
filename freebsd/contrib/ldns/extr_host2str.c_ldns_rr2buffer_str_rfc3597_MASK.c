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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static ldns_status
FUNC7(ldns_buffer *output, const ldns_rr *rr)
{
	size_t total_rdfsize = 0;
	size_t i, j;

	FUNC0(output, "TYPE%u\t", FUNC4(rr));
	for (i = 0; i < FUNC5(rr); i++) {
		total_rdfsize += FUNC3(FUNC6(rr, i));
	}
	if (total_rdfsize == 0) {
		FUNC0(output, "\\# 0\n");
		return FUNC1(output);
	}
	FUNC0(output, "\\# %d ", total_rdfsize);
	for (i = 0; i < FUNC5(rr); i++) {
		for (j = 0; j < FUNC3(FUNC6(rr, i)); j++) {
			FUNC0(output, "%.2x",
					FUNC2(FUNC6(rr, i))[j]);
		}
	}
	FUNC0(output, "\n");
	return FUNC1(output);
}