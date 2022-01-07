
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int BOOLEAN ;


 scalar_t__ AcpiUtStricmp (char*,char*) ;
 int FALSE ;
 int TRUE ;
 int isprint (int) ;
 int strlen (char*) ;

__attribute__((used)) static BOOLEAN
CvIsFilename (
    char *Filename)
{
    UINT64 Length = strlen(Filename);
    char *FileExt = Filename + Length - 4;
    UINT64 i;


    if ((Length > 4) && AcpiUtStricmp (FileExt, ".dsl"))
    {
        return (FALSE);
    }

    for(i = 0; i<Length; ++i)
    {
        if (!isprint ((int) Filename[i]))
        {
            return (FALSE);
        }
    }

    return (TRUE);
}
