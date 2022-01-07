
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ AGALOC (unsigned int,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *
strdup( char const *s )
{
    char *cp;

    if (s == ((void*)0))
        return ((void*)0);

    cp = (char *) AGALOC((unsigned) (strlen(s)+1), "strdup");

    if (cp != ((void*)0))
        (void) strcpy(cp, s);

    return cp;
}
