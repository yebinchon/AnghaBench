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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct pt_cpu {int family; int model; int stepping; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int pte_invalid ; 

int FUNC2(struct pt_cpu *cpu)
{
	uint32_t info;
	uint16_t family;

	if (!cpu)
		return -pte_invalid;

	cpu->vendor = FUNC1();

	info = FUNC0();

	cpu->family = family = (info>>8) & 0xf;
	if (family == 0xf)
		cpu->family += (info>>20) & 0xf;

	cpu->model = (info>>4) & 0xf;
	if (family == 0x6 || family == 0xf)
		cpu->model += (info>>12) & 0xf0;

	cpu->stepping = (info>>0) & 0xf;

	return 0;
}