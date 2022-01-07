
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ TotalUnreferencedObjects; scalar_t__ TotalObjects; scalar_t__ TotalUnreferenceUserMethods; scalar_t__ TotalUserMethods; scalar_t__ TotalPredefinedMethods; } ;
typedef TYPE_1__ ASL_XREF_INFO ;


 int ASL_FILE_XREF_OUTPUT ;
 int ASL_WALK_VISIT_DOWNWARD ;
 int AslGbl_CrossReferenceOutput ;
 int AslGbl_ParseTreeRoot ;
 int FlPrintFile (int ,char*,...) ;
 int OtPrintHeaders (char*) ;
 int OtXrefWalkPart2 ;
 int OtXrefWalkPart3 ;
 int TrWalkParseTree (int ,int ,int ,int *,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
OtCreateXrefFile (
    void)
{
    ASL_XREF_INFO XrefInfo;




    if (!AslGbl_CrossReferenceOutput)
    {
        return;
    }

    memset (&XrefInfo, 0, sizeof (ASL_XREF_INFO));



    OtPrintHeaders ("Part 2: Method Reference Map "
        "(Invocations of each user-defined control method)");

    TrWalkParseTree (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_DOWNWARD,
        OtXrefWalkPart2, ((void*)0), &XrefInfo);



    OtPrintHeaders ("Part 3: Full Object Reference Map "
        "(Methods that reference each object in namespace");

    TrWalkParseTree (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_DOWNWARD,
        OtXrefWalkPart3, ((void*)0), &XrefInfo);



    FlPrintFile (ASL_FILE_XREF_OUTPUT, "\n\nObject Summary\n");

    FlPrintFile (ASL_FILE_XREF_OUTPUT,
        "\nTotal methods:                   %u\n",
        XrefInfo.TotalPredefinedMethods + XrefInfo.TotalUserMethods);
    FlPrintFile (ASL_FILE_XREF_OUTPUT,
        "Total predefined methods:        %u\n",
        XrefInfo.TotalPredefinedMethods);

    FlPrintFile (ASL_FILE_XREF_OUTPUT,
        "\nTotal user methods:              %u\n",
        XrefInfo.TotalUserMethods);
    FlPrintFile (ASL_FILE_XREF_OUTPUT,
        "Total unreferenced user methods  %u\n",
        XrefInfo.TotalUnreferenceUserMethods);

    FlPrintFile (ASL_FILE_XREF_OUTPUT,
        "\nTotal defined objects:           %u\n",
        XrefInfo.TotalObjects);
    FlPrintFile (ASL_FILE_XREF_OUTPUT,
        "Total unreferenced objects:      %u\n",
        XrefInfo.TotalUnreferencedObjects);
}
