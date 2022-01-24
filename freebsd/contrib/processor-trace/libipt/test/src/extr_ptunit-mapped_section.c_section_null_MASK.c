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
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct pt_mapped_section {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_mapped_section*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 struct pt_section* FUNC1 (struct pt_mapped_section*) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pt_section*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_mapped_section msec;
	struct pt_section *psection;

	FUNC0(&msec, NULL, NULL, 0x2000ull, 0x100ull, 0x1000ull);

	psection = FUNC1(&msec);
	FUNC3(psection, NULL);

	return FUNC2();
}