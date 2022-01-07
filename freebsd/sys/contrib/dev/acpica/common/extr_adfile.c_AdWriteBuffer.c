
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int INT32 ;
typedef int FILE ;
typedef scalar_t__ ACPI_SIZE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fwrite (char*,int,size_t,int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static INT32
AdWriteBuffer (
    char *Filename,
    char *Buffer,
    UINT32 Length)
{
    FILE *File;
    ACPI_SIZE Actual;


    File = fopen (Filename, "wb");
    if (!File)
    {
        printf ("Could not open file %s\n", Filename);
        return (-1);
    }

    Actual = fwrite (Buffer, 1, (size_t) Length, File);
    if (Actual != Length)
    {
        printf ("Could not write to file %s\n", Filename);
    }

    fclose (File);
    return ((INT32) Actual);
}
