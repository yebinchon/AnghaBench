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
struct pt_msec_cache {int dummy; } ;
struct pt_mapped_section {int dummy; } ;
struct pt_image {int dummy; } ;
struct pt_asid {int dummy; } ;
typedef  int /*<<< orphan*/  mcache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_msec_cache*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct pt_msec_cache*,struct pt_mapped_section const**,struct pt_image*,struct pt_asid*,unsigned long long) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	const struct pt_mapped_section *msec;
	struct pt_msec_cache mcache;
	struct pt_image image;
	struct pt_asid asid;
	int status;

	FUNC0(&mcache, 0, sizeof(mcache));

	status = FUNC1(NULL, &msec, &image, &asid, 0ull);
	FUNC2(status, -pte_internal);

	status = FUNC1(&mcache, NULL, &image, &asid, 0ull);
	FUNC2(status, -pte_internal);

	status = FUNC1(&mcache, &msec, NULL, &asid, 0ull);
	FUNC2(status, -pte_internal);

	status = FUNC1(&mcache, &msec, &image, NULL, 0ull);
	FUNC2(status, -pte_internal);

	return FUNC3();
}