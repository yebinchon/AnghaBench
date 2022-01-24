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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_output_format ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void
FUNC3(FILE *output, 
		const ldns_output_format *fmt, const ldns_rr_list *lst)
{
	size_t i;
	for (i = 0; i < FUNC1(lst); i++) {
		FUNC2(output, fmt, FUNC0(lst, i));
	}
}