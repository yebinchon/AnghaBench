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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
#define  ID_AA64ISAR0_AES_BASE 129 
#define  ID_AA64ISAR0_AES_PMULL 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  id_aa64isar0_el1 ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	uint64_t reg;
	int ret = ENXIO;

	reg = FUNC1(id_aa64isar0_el1);

	switch (FUNC0(reg)) {
	case ID_AA64ISAR0_AES_BASE:
	case ID_AA64ISAR0_AES_PMULL:
		ret = 0;
		break;
	}

	FUNC2(dev, "AES-CBC");

	/* TODO: Check more fields as we support more features */

	return (ret);
}