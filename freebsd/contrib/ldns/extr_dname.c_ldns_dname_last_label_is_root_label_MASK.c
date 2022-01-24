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
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t* FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool
FUNC3(const ldns_rdf* dname)
{
	size_t src_pos;
	size_t len = 0;

	for (src_pos = 0; src_pos < FUNC2(dname); src_pos += len + 1) {
		len = FUNC1(dname)[src_pos];
	}
	FUNC0(src_pos == FUNC2(dname));

	return src_pos > 0 && len == 0;
}