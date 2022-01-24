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
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  fileInfo_t ;
typedef  int InfoError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
#define  info_file_error 132 
#define  info_frame_error 131 
#define  info_not_zstd 130 
#define  info_success 129 
#define  info_truncated_input 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(fileInfo_t* total, const char* inFileName, int displayLevel)
{
    fileInfo_t info;
    FUNC6(&info, 0, sizeof(info));
    {   InfoError const error = FUNC5(&info, inFileName);
        switch (error) {
            case info_frame_error:
                /* display error, but provide output */
                FUNC0(1, "Error while parsing \"%s\" \n", inFileName);
                break;
            case info_not_zstd:
                FUNC1("File \"%s\" not compressed by zstd \n", inFileName);
                if (displayLevel > 2) FUNC1("\n");
                return 1;
            case info_file_error:
                /* error occurred while opening the file */
                if (displayLevel > 2) FUNC1("\n");
                return 1;
            case info_truncated_input:
                FUNC1("File \"%s\" is truncated \n", inFileName);
                if (displayLevel > 2) FUNC1("\n");
                return 1;
            case info_success:
            default:
                break;
        }

        FUNC4(inFileName, &info, displayLevel);
        *total = FUNC2(*total, info);
        FUNC3(error == info_success || error == info_frame_error);
        return error;
    }
}