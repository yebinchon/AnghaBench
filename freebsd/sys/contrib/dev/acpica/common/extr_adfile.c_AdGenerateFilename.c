
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;


 int FILE_SUFFIX_BINARY_TABLE ;
 char* FilenameBuf ;
 int strcat (char*,int ) ;

char *
AdGenerateFilename (
    char *Prefix,
    char *TableId)
{
    UINT32 i;
    UINT32 j;


    for (i = 0; Prefix[i]; i++)
    {
        FilenameBuf[i] = Prefix[i];
    }

    FilenameBuf[i] = '_';
    i++;

    for (j = 0; j < 8 && (TableId[j] != ' ') && (TableId[j] != 0); i++, j++)
    {
        FilenameBuf[i] = TableId[j];
    }

    FilenameBuf[i] = 0;
    strcat (FilenameBuf, FILE_SUFFIX_BINARY_TABLE);
    return (FilenameBuf);
}
