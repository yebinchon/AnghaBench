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
typedef  scalar_t__ genType_e ;
struct TYPE_4__ {scalar_t__ srcStart; scalar_t__ src; scalar_t__ dataStart; scalar_t__ data; } ;
typedef  TYPE_1__ frame_t ;
typedef  int /*<<< orphan*/  dictInfo ;
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*,int /*<<< orphan*/  const) ; 
 scalar_t__ gt_frame ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,char*) ; 
 int FUNC6 (char*,int,char*,char const* const,unsigned int) ; 

__attribute__((used)) static int FUNC7(U32 seed, unsigned numFiles, const char* const path,
                          const char* const origPath, genType_e genType)
{
    char outPath[MAX_PATH];
    unsigned fnum;

    FUNC0("seed: %u\n", (unsigned)seed);

    for (fnum = 0; fnum < numFiles; fnum++) {
        frame_t fr;

        FUNC1("\r%u/%u        ", fnum, numFiles);

        {   dictInfo const info = FUNC4(0, 0, NULL, 0);
            if (genType == gt_frame) {
                seed = FUNC3(seed, &fr, info);
            } else {
                seed = FUNC2(seed, &fr, info);
            }
        }

        if (FUNC6(outPath, MAX_PATH, "%s/z%06u.zst", path, fnum) + 1 > MAX_PATH) {
            FUNC0("Error: path too long\n");
            return 1;
        }
        FUNC5(fr.dataStart, (BYTE*)fr.data - (BYTE*)fr.dataStart, outPath);

        if (origPath) {
            if (FUNC6(outPath, MAX_PATH, "%s/z%06u", origPath, fnum) + 1 > MAX_PATH) {
                FUNC0("Error: path too long\n");
                return 1;
            }
            FUNC5(fr.srcStart, (BYTE*)fr.src - (BYTE*)fr.srcStart, outPath);
        }
    }

    FUNC0("\r%u/%u      \n", fnum, numFiles);

    return 0;
}