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
 int /*<<< orphan*/ * AcpiGbl_TrsDecode ; 
 int /*<<< orphan*/ * AcpiGbl_TtpDecode ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (
        UINT8               SpecificFlags)
{

    /* _TTP */

    FUNC1 (", %s",
        AcpiGbl_TtpDecode [FUNC0 (SpecificFlags, 4)]);

    /*
     * TRS is only used if TTP is TypeTranslation. However, the disassembler
     * always emits exactly what is in the AML.
     */
    FUNC1 (", %s",
        AcpiGbl_TrsDecode [FUNC0 (SpecificFlags, 5)]);
}