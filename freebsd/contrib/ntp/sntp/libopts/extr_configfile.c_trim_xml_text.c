
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z ;
typedef scalar_t__ tOptionLoadMode ;
typedef int fmt ;


 char* AGALOC (size_t,char*) ;
 int AGFREE (char*) ;
 char NUL ;
 scalar_t__ OPTION_LOAD_UNCOOKED ;
 char* SPN_WHITESPACE_BACK (char*,char*) ;
 scalar_t__ sprintf (char*,char const*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *
trim_xml_text(char * intxt, char const * pznm, tOptionLoadMode mode)
{
    static char const fmt[] = "</%s>";
    size_t len = strlen(pznm) + sizeof(fmt) - 2 ;
    char * etext;

    {
        char z[64], *pz = z;
        if (len >= sizeof(z))
            pz = AGALOC(len, "scan name");

        len = (size_t)sprintf(pz, fmt, pznm);
        *intxt = ' ';
        etext = strstr(intxt, pz);
        if (pz != z) AGFREE(pz);
    }

    if (etext == ((void*)0))
        return etext;

    {
        char * result = etext + len;

        if (mode != OPTION_LOAD_UNCOOKED)
            etext = SPN_WHITESPACE_BACK(intxt, etext);

        *etext = NUL;
        return result;
    }
}
