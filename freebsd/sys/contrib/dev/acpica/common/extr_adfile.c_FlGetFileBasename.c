
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AcpiUtStrupr (char*) ;
 char* FlStrdup (char*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;

char *
FlGetFileBasename (
    char *FilePathname)
{
    char *FileBasename;
    char *Substring;




    Substring = strrchr (FilePathname, '/');
    if (!Substring)
    {
        Substring = strrchr (FilePathname, ':');
    }



    if (Substring)
    {
        FileBasename = FlStrdup (Substring + 1);
    }
    else
    {
        FileBasename = FlStrdup (FilePathname);
    }



    Substring = strchr (FileBasename, '.');
    if (Substring)
    {
        *Substring = 0;
    }

    AcpiUtStrupr (FileBasename);
    return (FileBasename);
}
