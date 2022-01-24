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
struct pt_section {int ucount; int mcount; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;
struct ifix_status {int deleted; int bad_put; } ;
struct ifix_mapping {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_section*,int /*<<< orphan*/ *,struct ifix_status*,struct ifix_mapping*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_asid*) ; 
 int FUNC2 (struct pt_image*,struct pt_section*,struct pt_asid*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_image*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_image*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 struct ptunit_result FUNC6 () ; 

__attribute__((used)) static struct ptunit_result FUNC7(void)
{
	struct ifix_mapping mapping;
	struct ifix_status status;
	struct pt_section section;
	struct pt_image image;
	struct pt_asid asid;
	int errcode;

	FUNC1(&asid);
	FUNC0(&section, NULL, &status, &mapping, NULL);

	FUNC4(&image, NULL);
	errcode = FUNC2(&image, &section, &asid, 0x0ull, 0);
	FUNC5(errcode, 0);

	FUNC3(&image);
	FUNC5(section.ucount, 0);
	FUNC5(section.mcount, 0);
	FUNC5(status.deleted, 1);
	FUNC5(status.bad_put, 0);

	return FUNC6();
}