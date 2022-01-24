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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AslGbl_TotalParseNodes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

ACPI_STATUS
FUNC2 (
    ACPI_PARSE_OBJECT       *Op,
    UINT32                  Level,
    void                    *Context)
{

    AslGbl_TotalParseNodes++;

    FUNC0 (Op);
    FUNC1 (Op);
    return (AE_OK);
}