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
typedef  size_t UINT32 ;
struct TYPE_2__ {char* Filename; int /*<<< orphan*/ * Handle; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_MSG_OPEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 

void
FUNC3 (
    UINT32                  FileId,
    char                    *Filename,
    char                    *Mode)
{
    FILE                    *File;


    AslGbl_Files[FileId].Filename = Filename;
    AslGbl_Files[FileId].Handle = NULL;

    File = FUNC2 (Filename, Mode);
    if (!File)
    {
        FUNC1 (FileId, ASL_MSG_OPEN);
        FUNC0 ();
    }

    AslGbl_Files[FileId].Handle = File;
}