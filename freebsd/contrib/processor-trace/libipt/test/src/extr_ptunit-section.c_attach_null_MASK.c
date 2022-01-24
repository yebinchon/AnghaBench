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
struct pt_image_section_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_section*,struct pt_image_section_cache*) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_image_section_cache iscache;
	struct pt_section section;
	int errcode;

	errcode = FUNC0(NULL, &iscache);
	FUNC1(errcode, -pte_internal);

	errcode = FUNC0(&section, NULL);
	FUNC1(errcode, -pte_internal);

	errcode = FUNC0(NULL, NULL);
	FUNC1(errcode, -pte_internal);

	return FUNC2();
}