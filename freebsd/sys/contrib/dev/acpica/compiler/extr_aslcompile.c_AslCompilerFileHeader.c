
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
typedef int UINT32 ;
struct TYPE_2__ {int Filename; } ;
 size_t ASL_FILE_INPUT ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_HexOutputFlag ;
 int FlPrintFile (int,char*,...) ;
 int HEX_OUTPUT_ASL ;
 int HEX_OUTPUT_ASM ;
 int HEX_OUTPUT_C ;
 int asctime (struct tm*) ;
 struct tm* localtime (int *) ;
 int time (int *) ;

void
AslCompilerFileHeader (
    UINT32 FileId)
{
    struct tm *NewTime;
    time_t Aclock;
    char *Prefix = "";




    switch (FileId)
    {
    case 132:
    case 133:

        Prefix = "; ";
        break;

    case 128:

        if (AslGbl_HexOutputFlag == HEX_OUTPUT_ASM)
        {
            Prefix = "; ";
        }
        else if ((AslGbl_HexOutputFlag == HEX_OUTPUT_C) ||
                 (AslGbl_HexOutputFlag == HEX_OUTPUT_ASL))
        {
            Prefix = " * ";
        }
        break;

    case 129:
    case 130:
    case 131:

        Prefix = " * ";
        break;

    default:



        break;
    }



    (void) time (&Aclock);
    NewTime = localtime (&Aclock);

    FlPrintFile (FileId,
        "%sCompilation of \"%s\" - %s%s\n",
        Prefix, AslGbl_Files[ASL_FILE_INPUT].Filename, asctime (NewTime),
        Prefix);

    switch (FileId)
    {
    case 129:
    case 130:
    case 131:

        FlPrintFile (FileId, " */\n");
        break;

    default:



        break;
    }
}
