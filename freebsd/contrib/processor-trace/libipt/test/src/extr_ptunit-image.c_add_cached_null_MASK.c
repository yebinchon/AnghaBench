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
struct pt_image_section_cache {int dummy; } ;
struct pt_image {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_image*,struct pt_image_section_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_image_section_cache iscache;
	struct pt_image image;
	int status;

	status = FUNC0(NULL, &iscache, 0, NULL);
	FUNC1(status, -pte_invalid);

	status = FUNC0(&image, NULL, 0, NULL);
	FUNC1(status, -pte_invalid);

	return FUNC2();
}