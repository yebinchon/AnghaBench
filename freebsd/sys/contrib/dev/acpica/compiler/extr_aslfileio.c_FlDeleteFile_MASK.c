#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_5__ {char* Description; } ;
struct TYPE_4__ {char* Filename; } ;
typedef  TYPE_1__ ASL_FILE_INFO ;

/* Variables and functions */
 TYPE_3__* AslGbl_FileDescs ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 

void
FUNC3 (
    UINT32                  FileId)
{
    ASL_FILE_INFO           *Info = &AslGbl_Files[FileId];


    if (!Info->Filename)
    {
        return;
    }

    if (FUNC2 (Info->Filename))
    {
        FUNC1 ("%s (%s file) ",
            Info->Filename, AslGbl_FileDescs[FileId].Description);
        FUNC0 ("Could not delete");
    }

    Info->Filename = NULL;
    return;
}