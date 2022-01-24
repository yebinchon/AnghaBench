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
 int /*<<< orphan*/ * AcpiGbl_MtpDecode ; 
 int /*<<< orphan*/ * AcpiGbl_TtpDecode ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (
    UINT8                   SpecificFlags)
{

    FUNC2 (", %s, %s",
        AcpiGbl_MtpDecode [FUNC1 (SpecificFlags, 3)],
        AcpiGbl_TtpDecode [FUNC0 (SpecificFlags, 5)]);
}