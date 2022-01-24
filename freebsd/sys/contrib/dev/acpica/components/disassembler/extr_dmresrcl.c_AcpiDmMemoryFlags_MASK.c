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
typedef  int /*<<< orphan*/  UINT8 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * AcpiGbl_ConsumeDecode ; 
 int /*<<< orphan*/ * AcpiGbl_DecDecode ; 
 int /*<<< orphan*/ * AcpiGbl_MaxDecode ; 
 int /*<<< orphan*/ * AcpiGbl_MemDecode ; 
 int /*<<< orphan*/ * AcpiGbl_MinDecode ; 
 int /*<<< orphan*/ * AcpiGbl_RwDecode ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (
    UINT8                   Flags,
    UINT8                   SpecificFlags)
{

    FUNC3 ("%s, %s, %s, %s, %s, %s,",
        AcpiGbl_ConsumeDecode [FUNC2 (Flags)],
        AcpiGbl_DecDecode [FUNC0 (Flags, 1)],
        AcpiGbl_MinDecode [FUNC0 (Flags, 2)],
        AcpiGbl_MaxDecode [FUNC0 (Flags, 3)],
        AcpiGbl_MemDecode [FUNC1 (SpecificFlags, 1)],
        AcpiGbl_RwDecode [FUNC2 (SpecificFlags)]);
}