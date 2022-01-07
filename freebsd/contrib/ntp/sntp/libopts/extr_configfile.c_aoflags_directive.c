
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;


 char* AGALOC (size_t,char*) ;
 int AGFREE (char*) ;
 char NUL ;
 char* SPN_WHITESPACE_CHARS (char*) ;
 int memcpy (char*,char*,size_t) ;
 int set_usage_flags (int *,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
aoflags_directive(tOptions * opts, char * txt)
{
    char * pz;

    pz = SPN_WHITESPACE_CHARS(txt+1);
    txt = strchr(pz, '>');
    if (txt != ((void*)0)) {

        size_t len = (unsigned)(txt - pz);
        char * ftxt = AGALOC(len + 1, "aoflags");

        memcpy(ftxt, pz, len);
        ftxt[len] = NUL;
        set_usage_flags(opts, ftxt);
        AGFREE(ftxt);

        txt++;
    }

    return txt;
}
