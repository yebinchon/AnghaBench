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
typedef  int /*<<< orphan*/  resources ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,char const* const,void*) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 void* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (void*,char const* const) ; 
 size_t FUNC8 (char const* const) ; 

int FUNC9(int argc, const char** argv)
{
    const char* const exeName = argv[0];

    if (argc<2) {
        FUNC6("wrong arguments\n");
        FUNC6("usage:\n");
        FUNC6("%s FILE(s)\n", exeName);
        return 1;
    }

    int const cLevel = 7;
    resources const ress = FUNC1(cLevel);
    void* ofnBuffer = NULL;
    size_t ofnbSize = 0;

    int argNb;
    for (argNb = 1; argNb < argc; argNb++) {
        const char* const ifn = argv[argNb];
        size_t const ifnSize = FUNC8(ifn);
        size_t const ofnSize = ifnSize + 5;
        if (ofnbSize <= ofnSize) {
            ofnbSize = ofnSize + 16;
            FUNC2(ofnBuffer);
            ofnBuffer = FUNC4(ofnbSize);
        }
        FUNC5(ofnBuffer, 0, ofnSize);
        FUNC7(ofnBuffer, ifn);
        FUNC7(ofnBuffer, ".zst");
        FUNC0(ress, ifn, ofnBuffer);
    }

    FUNC3(ress);
    FUNC2(ofnBuffer);

    FUNC6("compressed %i files \n", argc-1);

    return 0;
}