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
struct TYPE_2__ {int /*<<< orphan*/  Handle; } ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_DEBUG_OUTPUT ; 
 size_t ASL_FILE_INPUT ; 
 size_t ASL_FILE_PREPROCESSOR ; 
 int /*<<< orphan*/  AslCompilerin ; 
 scalar_t__ AslGbl_CurrentLineNumber ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  AslGbl_PreprocessOnly ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6 (
    void)
{
    BOOLEAN                 MoreInputFiles;


    FUNC0 (ASL_DEBUG_OUTPUT, "Starting preprocessing phase\n\n");


    FUNC2 (ASL_FILE_INPUT, 0);
    FUNC3 ();

    /* Main preprocessor loop, handles include files */

    do
    {
        FUNC5 ();
        MoreInputFiles = FUNC4 ();

    } while (MoreInputFiles);

    /* Point compiler input to the new preprocessor output file (.pre) */

    FUNC1 (ASL_FILE_INPUT);
    AslGbl_Files[ASL_FILE_INPUT].Handle = AslGbl_Files[ASL_FILE_PREPROCESSOR].Handle;
    AslCompilerin = AslGbl_Files[ASL_FILE_INPUT].Handle;

    /* Reset globals to allow compiler to run */

    FUNC2 (ASL_FILE_INPUT, 0);
    if (!AslGbl_PreprocessOnly)
    {
        AslGbl_CurrentLineNumber = 0;
    }

    FUNC0 (ASL_DEBUG_OUTPUT, "Preprocessing phase complete \n\n");
}