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
struct TYPE_4__ {scalar_t__ TotalUnreferencedObjects; scalar_t__ TotalObjects; scalar_t__ TotalUnreferenceUserMethods; scalar_t__ TotalUserMethods; scalar_t__ TotalPredefinedMethods; } ;
typedef  TYPE_1__ ASL_XREF_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_FILE_XREF_OUTPUT ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_DOWNWARD ; 
 int /*<<< orphan*/  AslGbl_CrossReferenceOutput ; 
 int /*<<< orphan*/  AslGbl_ParseTreeRoot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  OtXrefWalkPart2 ; 
 int /*<<< orphan*/  OtXrefWalkPart3 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4 (
    void)
{
    ASL_XREF_INFO           XrefInfo;


    /* Build cross-reference output file if requested */

    if (!AslGbl_CrossReferenceOutput)
    {
        return;
    }

    FUNC3 (&XrefInfo, 0, sizeof (ASL_XREF_INFO));

    /* Cross-reference output file, part 2 (Method invocations) */

    FUNC1 ("Part 2: Method Reference Map "
        "(Invocations of each user-defined control method)");

    FUNC2 (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_DOWNWARD,
        OtXrefWalkPart2, NULL, &XrefInfo);

    /* Cross-reference output file, part 3 (All other object refs) */

    FUNC1 ("Part 3: Full Object Reference Map "
        "(Methods that reference each object in namespace");

    FUNC2 (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_DOWNWARD,
        OtXrefWalkPart3, NULL, &XrefInfo);

    /* Cross-reference summary */

    FUNC0 (ASL_FILE_XREF_OUTPUT, "\n\nObject Summary\n");

    FUNC0 (ASL_FILE_XREF_OUTPUT,
        "\nTotal methods:                   %u\n",
        XrefInfo.TotalPredefinedMethods + XrefInfo.TotalUserMethods);
    FUNC0 (ASL_FILE_XREF_OUTPUT,
        "Total predefined methods:        %u\n",
        XrefInfo.TotalPredefinedMethods);

    FUNC0 (ASL_FILE_XREF_OUTPUT,
        "\nTotal user methods:              %u\n",
        XrefInfo.TotalUserMethods);
    FUNC0 (ASL_FILE_XREF_OUTPUT,
        "Total unreferenced user methods  %u\n",
        XrefInfo.TotalUnreferenceUserMethods);

    FUNC0 (ASL_FILE_XREF_OUTPUT,
        "\nTotal defined objects:           %u\n",
        XrefInfo.TotalObjects);
    FUNC0 (ASL_FILE_XREF_OUTPUT,
        "Total unreferenced objects:      %u\n",
        XrefInfo.TotalUnreferencedObjects);
}