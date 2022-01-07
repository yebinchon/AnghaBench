
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASL_PARSE_OUTPUT ;
 int DbgPrint (int ,char*,char*,...) ;
 int UtConvertBackslashes (char*) ;
 char* UtLocalCacheCalloc (scalar_t__) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;

char *
FlMergePathnames (
    char *PrefixDir,
    char *FilePathname)
{
    char *CommonPath;
    char *Pathname;
    char *LastElement;


    DbgPrint (ASL_PARSE_OUTPUT, "Include: Prefix path - \"%s\"\n"
        "Include: FilePathname - \"%s\"\n",
         PrefixDir, FilePathname);





    if (!PrefixDir || (!*PrefixDir) ||
        (*FilePathname == '/') ||
         (FilePathname[1] == ':'))
    {
        Pathname = UtLocalCacheCalloc (strlen (FilePathname) + 1);
        strcpy (Pathname, FilePathname);
        goto ConvertBackslashes;
    }



    CommonPath = UtLocalCacheCalloc (strlen (PrefixDir) + 1);
    strcpy (CommonPath, PrefixDir);






    while (*FilePathname && (!strncmp (FilePathname, "../", 3)))
    {


        LastElement = strrchr (CommonPath, '/');
        if (!LastElement)
        {
            goto ConcatenatePaths;
        }

        *LastElement = 0;
        FilePathname += 3;
    }






    LastElement = strrchr (CommonPath, '/');
    if (LastElement)
    {
        *LastElement = 0;
    }



ConcatenatePaths:
    Pathname = UtLocalCacheCalloc (
        strlen (CommonPath) + strlen (FilePathname) + 2);
    if (LastElement && *CommonPath)
    {
        strcpy (Pathname, CommonPath);
        strcat (Pathname, "/");
    }
    strcat (Pathname, FilePathname);



ConvertBackslashes:
    UtConvertBackslashes (Pathname);

    DbgPrint (ASL_PARSE_OUTPUT, "Include: Merged Pathname - \"%s\"\n",
         Pathname);
    return (Pathname);
}
