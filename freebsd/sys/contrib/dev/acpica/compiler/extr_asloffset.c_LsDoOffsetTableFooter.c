
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 scalar_t__ AslGbl_CurrentAmlOffset ;
 int FlPrintFile (int ,char*) ;

void
LsDoOffsetTableFooter (
    UINT32 FileId)
{

    FlPrintFile (FileId,
        "    {NULL,0,0,0,0,0} /* Table terminator */\n};\n\n");
    AslGbl_CurrentAmlOffset = 0;
}
