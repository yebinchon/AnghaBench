
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 char* UtLocalCacheCalloc (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char *
CvAppendInlineComment (
    char *InlineComment,
    char *ToAdd)
{
    char* Str;
    UINT32 Size = 0;


    if (!InlineComment)
    {
        return (ToAdd);
    }

    if (!ToAdd)
    {
        return (InlineComment);
    }

    Size = strlen (ToAdd);
    Size += strlen (InlineComment);
    Str = UtLocalCacheCalloc (Size + 1);

    strcpy (Str, InlineComment);
    strcat (Str, ToAdd);
    Str[Size +1] = 0;
    return (Str);
}
