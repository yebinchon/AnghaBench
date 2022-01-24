#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_5__ {int CompileFlags; scalar_t__ FinalAmlLength; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_FILE_AML_OUTPUT ; 
 scalar_t__ ASL_FILE_ASM_INCLUDE_OUTPUT ; 
 scalar_t__ ASL_FILE_C_INCLUDE_OUTPUT ; 
 int /*<<< orphan*/  ASL_MSG_READ ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 int OP_IS_RESOURCE_DATA ; 

__attribute__((used)) static ACPI_STATUS
FUNC7 (
    ACPI_PARSE_OBJECT       *Op,
    UINT32                  Level,
    void                    *Context)
{
    UINT8                   FileByte;
    UINT32                  i;
    UINT32                  FileId = (UINT32) FUNC1 (Context);


    FUNC6 (Op, FileId);

    if (Op->Asl.CompileFlags & OP_IS_RESOURCE_DATA)
    {
        /* Buffer is a resource template, don't dump the data all at once */

        return (AE_OK);
    }

    if ((FileId == ASL_FILE_ASM_INCLUDE_OUTPUT) ||
        (FileId == ASL_FILE_C_INCLUDE_OUTPUT))
    {
        return (AE_OK);
    }

    /* Write the hex bytes to the listing file(s) (if requested) */

    for (i = 0; i < Op->Asl.FinalAmlLength; i++)
    {
        if (FUNC0 (FUNC4 (ASL_FILE_AML_OUTPUT, &FileByte, 1)))
        {
            FUNC3 (ASL_FILE_AML_OUTPUT, ASL_MSG_READ);
            FUNC2 ();
        }

        FUNC5 (&FileByte, 1, FileId);
    }

    return (AE_OK);
}