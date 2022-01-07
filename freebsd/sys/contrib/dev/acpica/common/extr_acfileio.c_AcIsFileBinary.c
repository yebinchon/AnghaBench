
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int FILE ;
typedef int BOOLEAN ;


 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int fread (int *,int,int,int *) ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;
 int isprint (int ) ;
 int isspace (int ) ;

BOOLEAN
AcIsFileBinary (
    FILE *File)
{
    UINT8 Byte;
    BOOLEAN IsBinary = FALSE;
    long FileOffset;




    FileOffset = ftell (File);
    while (fread (&Byte, 1, 1, File) == 1)
    {
        if (!isprint (Byte) && !isspace (Byte))
        {
            IsBinary = TRUE;
            goto Exit;
        }
    }

Exit:
    fseek (File, FileOffset, SEEK_SET);
    return (IsBinary);
}
