#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_3__ {scalar_t__ Pointer; int /*<<< orphan*/  Length; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_LOCAL_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7 (
    UINT32                  FileId,
    ACPI_NAMESPACE_NODE     *Node,
    UINT32                  NamepathOffset,
    UINT32                  Offset,
    char                    *OpName,
    UINT64                  Value,
    UINT8                   AmlOpcode,
    UINT16                  ParentOpcode)
{
    ACPI_BUFFER             TargetPath;
    ACPI_STATUS             Status;


    /* Get the full pathname to the namespace node */

    TargetPath.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = FUNC3 (Node, &TargetPath, FALSE);
    if (FUNC0 (Status))
    {
        return;
    }

    /* [1] - Skip the opening backslash for the path */

    FUNC6 (AslGbl_MsgBuffer, "\"");
    FUNC5 (AslGbl_MsgBuffer, &((char *) TargetPath.Pointer)[1]);
    FUNC5 (AslGbl_MsgBuffer, "\",");
    FUNC2 (TargetPath.Pointer);

    /*
     * Max offset is 4G, constrained by 32-bit ACPI table length.
     * Max Length for Integers is 8 bytes.
     */
    FUNC4 (FileId,
        "    {%-29s 0x%4.4X, 0x%8.8X, 0x%2.2X, 0x%8.8X, 0x%8.8X%8.8X}, /* %s */\n",
        AslGbl_MsgBuffer, ParentOpcode, NamepathOffset, AmlOpcode,
        Offset, FUNC1 (Value), OpName);
}