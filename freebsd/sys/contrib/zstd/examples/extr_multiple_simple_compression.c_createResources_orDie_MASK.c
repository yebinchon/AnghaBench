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
struct TYPE_3__ {size_t fBufferSize; size_t cBufferSize; int /*<<< orphan*/ * cctx; void* cBuffer; void* fBuffer; } ;
typedef  TYPE_1__ resources ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 size_t FUNC3 (char const* const) ; 
 void* FUNC4 (size_t) ; 
 size_t FUNC5 (char const* const) ; 

__attribute__((used)) static resources FUNC6(int argc, const char** argv, char **ofn, size_t* ofnBufferLen)
{
    size_t maxFilenameLength=0;
    size_t maxFileSize = 0;

    int argNb;
    for (argNb = 1; argNb < argc; argNb++) {
      const char* const filename = argv[argNb];
      size_t const filenameLength = FUNC5(filename);
      size_t const fileSize = FUNC3(filename);

      if (filenameLength > maxFilenameLength) maxFilenameLength = filenameLength;
      if (fileSize > maxFileSize) maxFileSize = fileSize;
    }

    resources ress;
    ress.fBufferSize = maxFileSize;
    ress.cBufferSize = FUNC1(maxFileSize);

    *ofnBufferLen = maxFilenameLength + 5;
    *ofn = (char*)FUNC4(*ofnBufferLen);
    ress.fBuffer = FUNC4(ress.fBufferSize);
    ress.cBuffer = FUNC4(ress.cBufferSize);
    ress.cctx = FUNC2();
    FUNC0(ress.cctx != NULL, "ZSTD_createCCtx() failed!");
    return ress;
}