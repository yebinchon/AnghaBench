
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_2__ {int Filename; } ;


 int ASL_FILE_AML_OUTPUT ;
 size_t ASL_FILE_HEX_OUTPUT ;
 int AcpiUtStrlwr (char*) ;
 TYPE_1__* AslGbl_Files ;
 char* FlGetFileBasename (int ) ;
 size_t FlGetFileSize (int ) ;
 int FlPrintFile (size_t,char*,...) ;
 int FlSeekFile (int ,int ) ;
 int HEX_TABLE_LINE_SIZE ;
 size_t HxReadAmlOutputFile (int *) ;
 int LsDumpAsciiInComment (size_t,size_t,int *) ;

__attribute__((used)) static void
HxDoHexOutputC (
    void)
{
    UINT8 FileData[HEX_TABLE_LINE_SIZE];
    UINT32 LineLength;
    UINT32 Offset = 0;
    UINT32 AmlFileSize;
    UINT32 i;
    char *FileBasename;




    FileBasename = FlGetFileBasename (AslGbl_Files [ASL_FILE_HEX_OUTPUT].Filename);



    AmlFileSize = FlGetFileSize (ASL_FILE_AML_OUTPUT);
    FlSeekFile (ASL_FILE_AML_OUTPUT, 0);



    FlPrintFile (ASL_FILE_HEX_OUTPUT, " * C source code output\n");
    FlPrintFile (ASL_FILE_HEX_OUTPUT, " * AML code block contains 0x%X bytes\n *\n */\n",
        AmlFileSize);

    FlPrintFile (ASL_FILE_HEX_OUTPUT, "#ifndef __%s_HEX__\n", FileBasename);
    FlPrintFile (ASL_FILE_HEX_OUTPUT, "#define __%s_HEX__\n\n", FileBasename);

    AcpiUtStrlwr (FileBasename);
    FlPrintFile (ASL_FILE_HEX_OUTPUT, "unsigned char %s_aml_code[] =\n{\n", FileBasename);

    while (Offset < AmlFileSize)
    {


        LineLength = HxReadAmlOutputFile (FileData);
        if (!LineLength)
        {
            break;
        }

        FlPrintFile (ASL_FILE_HEX_OUTPUT, "    ");

        for (i = 0; i < LineLength; i++)
        {





            FlPrintFile (ASL_FILE_HEX_OUTPUT, "0x%2.2X", FileData[i]);
            if ((Offset + i + 1) < AmlFileSize)
            {
                FlPrintFile (ASL_FILE_HEX_OUTPUT, ",");
            }
            else
            {
                FlPrintFile (ASL_FILE_HEX_OUTPUT, " ");
            }
        }



        if (LineLength < HEX_TABLE_LINE_SIZE)
        {
            FlPrintFile (ASL_FILE_HEX_OUTPUT, "%*s",
                5 * (HEX_TABLE_LINE_SIZE - LineLength), " ");
        }



        FlPrintFile (ASL_FILE_HEX_OUTPUT, "  /* %8.8X", Offset);
        LsDumpAsciiInComment (ASL_FILE_HEX_OUTPUT, LineLength, FileData);

        FlPrintFile (ASL_FILE_HEX_OUTPUT, "%*s*/\n",
            HEX_TABLE_LINE_SIZE - LineLength + 1, " ");

        Offset += LineLength;
    }

    FlPrintFile (ASL_FILE_HEX_OUTPUT, "};\n\n");
    FlPrintFile (ASL_FILE_HEX_OUTPUT, "#endif\n");
}
