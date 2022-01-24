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
typedef  int /*<<< orphan*/  uint8_t ;
struct ptunit_result {int dummy; } ;
struct pt_image_section_cache {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FUNC0 (struct pt_image_section_cache*,int /*<<< orphan*/ *,unsigned long long,int,unsigned long long) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_image_section_cache iscache;
	uint8_t buffer;
	int errcode;

	errcode = FUNC0(NULL, &buffer, sizeof(buffer), 1ull, 0ull);
	FUNC1(errcode, -pte_invalid);

	errcode = FUNC0(&iscache, NULL, sizeof(buffer), 1ull, 0ull);
	FUNC1(errcode, -pte_invalid);

	errcode = FUNC0(&iscache, &buffer, 0ull, 1, 0ull);
	FUNC1(errcode, -pte_invalid);

	return FUNC2();
}