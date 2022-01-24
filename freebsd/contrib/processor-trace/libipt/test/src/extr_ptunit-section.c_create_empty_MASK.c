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
struct section_fixture {int /*<<< orphan*/  section; int /*<<< orphan*/  name; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct section_fixture *sfix)
{
	int errcode;

	errcode = FUNC0(&sfix->section, sfix->name, 0x0ull, 0x10ull);
	FUNC1(errcode, -pte_invalid);
	FUNC2(sfix->section);

	return FUNC3();
}