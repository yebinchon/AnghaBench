#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int nbFiles; int /*<<< orphan*/  compressedSize; } ;
typedef  TYPE_1__ fileInfo_t ;
typedef  int /*<<< orphan*/  InfoError ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  info_file_error ; 

__attribute__((used)) static InfoError
FUNC5(fileInfo_t* info, const char* inFileName)
{
    InfoError status;
    FILE* const srcFile = FUNC2(inFileName);
    FUNC0(srcFile == NULL, info_file_error, "Error: could not open source file %s", inFileName);

    info->compressedSize = FUNC3(inFileName);
    status = FUNC1(info, srcFile);

    FUNC4(srcFile);
    info->nbFiles = 1;
    return status;
}