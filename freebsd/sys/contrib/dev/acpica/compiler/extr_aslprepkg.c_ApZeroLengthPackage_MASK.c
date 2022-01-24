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
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_RESERVED_PACKAGE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void
FUNC2 (
    const char                  *PredefinedName,
    ACPI_PARSE_OBJECT           *Op)
{

    FUNC1 (AslGbl_MsgBuffer, "%s: length is zero", PredefinedName);

    FUNC0 (ASL_ERROR, ASL_MSG_RESERVED_PACKAGE_LENGTH, Op, AslGbl_MsgBuffer);
}