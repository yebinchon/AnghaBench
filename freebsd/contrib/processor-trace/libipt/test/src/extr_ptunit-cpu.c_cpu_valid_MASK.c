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
struct pt_cpu {int vendor; int /*<<< orphan*/  stepping; int /*<<< orphan*/  model; int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  pcv_intel ; 
 int FUNC0 (struct pt_cpu*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_cpu cpu;
	int error;

	error = FUNC0(&cpu, "6/44/2");
	FUNC1(error, 0);
	FUNC1(cpu.vendor, pcv_intel);
	FUNC3(cpu.family, 6);
	FUNC3(cpu.model, 44);
	FUNC3(cpu.stepping, 2);

	error = FUNC0(&cpu, "0xf/0x2c/0xf");
	FUNC1(error, 0);
	FUNC1(cpu.vendor, pcv_intel);
	FUNC3(cpu.family, 0xf);
	FUNC3(cpu.model, 0x2c);
	FUNC3(cpu.stepping, 0xf);

	error = FUNC0(&cpu, "022/054/017");
	FUNC1(error, 0);
	FUNC1(cpu.vendor, pcv_intel);
	FUNC3(cpu.family, 022);
	FUNC3(cpu.model, 054);
	FUNC3(cpu.stepping, 017);

	error = FUNC0(&cpu, "6/44");
	FUNC1(error, 0);
	FUNC1(cpu.vendor, pcv_intel);
	FUNC3(cpu.family, 6);
	FUNC3(cpu.model, 44);
	FUNC3(cpu.stepping, 0);

	return FUNC2();
}