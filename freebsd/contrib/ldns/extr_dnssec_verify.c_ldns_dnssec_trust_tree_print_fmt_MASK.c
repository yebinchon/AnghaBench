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
typedef  int /*<<< orphan*/  ldns_output_format ;
typedef  int /*<<< orphan*/  ldns_dnssec_trust_tree ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(FILE *out, const ldns_output_format *fmt,
		ldns_dnssec_trust_tree *tree,
		size_t tabs,
		bool extended)
{
	FUNC0(out, fmt, 
			tree, tabs, extended, NULL, 0);
}