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
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 

ldns_status
FUNC4(ldns_buffer *output, const ldns_rdf *rdf)
{
	size_t i;
	for (i = 0; i < FUNC3(rdf); i++) {
		FUNC0(output, "%02x", FUNC2(rdf)[i]);
	}

	return FUNC1(output);
}