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
typedef  int /*<<< orphan*/  ldns_rr ;

/* Variables and functions */
 int /*<<< orphan*/  ldns_output_format_default ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

char *
FUNC1(const ldns_rr *rr)
{
	return FUNC0(ldns_output_format_default, rr);
}