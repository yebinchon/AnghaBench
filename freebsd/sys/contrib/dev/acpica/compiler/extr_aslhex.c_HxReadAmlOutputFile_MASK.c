#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/  Handle; } ;

/* Variables and functions */
 size_t ASL_FILE_AML_OUTPUT ; 
 int /*<<< orphan*/  ASL_MSG_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEX_TABLE_LINE_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT32
FUNC4 (
    UINT8                   *Buffer)
{
    UINT32                  Actual;


    Actual = FUNC3 (Buffer, 1, HEX_TABLE_LINE_SIZE,
        AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle);

    if (FUNC2 (AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle))
    {
        FUNC1 (ASL_FILE_AML_OUTPUT, ASL_MSG_READ);
        FUNC0 ();
    }

    return (Actual);
}