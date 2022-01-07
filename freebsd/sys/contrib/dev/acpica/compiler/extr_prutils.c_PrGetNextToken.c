
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,char) ;

char *
PrGetNextToken (
    char *Buffer,
    char *MatchString,
    char **Next)
{
    char *TokenStart;


    if (!Buffer)
    {


        Buffer = *Next;
        if (!(*Next))
        {
            return (((void*)0));
        }
    }



    while (*Buffer)
    {
        if (strchr (MatchString, *Buffer))
        {
            Buffer++;
        }
        else
        {
            break;
        }
    }



    if (!(*Buffer))
    {
        *Next = ((void*)0);
        return (((void*)0));
    }

    TokenStart = Buffer;



    while (*Buffer)
    {
        if (strchr (MatchString, *Buffer))
        {
            *Buffer = 0;
            *Next = Buffer+1;
            if (!**Next)
            {
                *Next = ((void*)0);
            }

            return (TokenStart);
        }

        Buffer++;
    }

    *Next = ((void*)0);
    return (TokenStart);
}
