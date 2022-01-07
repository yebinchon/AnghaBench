
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* Filename; } ;


 size_t ASL_FILE_INPUT ;
 int ASL_PARSE_OUTPUT ;
 TYPE_1__* AslGbl_Files ;
 int DbgPrint (int ,char*,char*,char*) ;

void
FlSetFilename (
    char *Filename)
{

    DbgPrint (ASL_PARSE_OUTPUT, "\n#line: New filename %s (old %s)\n",
         Filename, AslGbl_Files[ASL_FILE_INPUT].Filename);



    AslGbl_Files[ASL_FILE_INPUT].Filename = Filename;
}
