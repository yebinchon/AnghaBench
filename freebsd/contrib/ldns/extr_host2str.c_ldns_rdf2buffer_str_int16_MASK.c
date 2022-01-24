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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

ldns_status
FUNC4(ldns_buffer *output, const ldns_rdf *rdf)
{
	uint16_t data = FUNC3(FUNC2(rdf));
	FUNC0(output, "%lu", (unsigned long) data);
	return FUNC1(output);
}