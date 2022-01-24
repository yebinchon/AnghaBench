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
struct pt_cpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_cpu*,char*) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_cpu cpu;
	int error;

	error = FUNC0(&cpu, "e/44/2");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "6/e/2");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "6/44/e");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "65536/44/2");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "6/256/2");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "6/44/256");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "-1/44/2");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "6/-1/2");
	FUNC1(error, -pte_invalid);

	error = FUNC0(&cpu, "6/44/-1");
	FUNC1(error, -pte_invalid);

	return FUNC2();
}