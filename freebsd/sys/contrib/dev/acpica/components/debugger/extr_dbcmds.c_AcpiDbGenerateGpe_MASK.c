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
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_GPE_EVENT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5 (
    char                    *GpeArg,
    char                    *BlockArg)
{
    UINT32                  BlockNumber = 0;
    UINT32                  GpeNumber;
    ACPI_GPE_EVENT_INFO     *GpeEventInfo;


    GpeNumber = FUNC4 (GpeArg, NULL, 0);

    /*
     * If no block arg, or block arg == 0 or 1, use the FADT-defined
     * GPE blocks.
     */
    if (BlockArg)
    {
        BlockNumber = FUNC4 (BlockArg, NULL, 0);
        if (BlockNumber == 1)
        {
            BlockNumber = 0;
        }
    }

    GpeEventInfo = FUNC1 (
        FUNC0 (BlockNumber), GpeNumber);
    if (!GpeEventInfo)
    {
        FUNC3 ("Invalid GPE\n");
        return;
    }

    (void) FUNC2 (NULL, GpeEventInfo, GpeNumber);
}