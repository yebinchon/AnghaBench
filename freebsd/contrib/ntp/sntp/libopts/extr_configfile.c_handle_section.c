
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pzPROGNAME; } ;
typedef TYPE_1__ tOptions ;


 int NL ;
 int sprintf (char*,char*,char*) ;
 char* strchr (char*,int ) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *
handle_section(tOptions * opts, char * txt)
{
    size_t len = strlen(opts->pzPROGNAME);
    if ( (strncmp(txt+1, opts->pzPROGNAME, len) == 0)
        && (txt[len+1] == ']'))
        return strchr(txt + len + 2, NL);

    if (len > 16)
        return ((void*)0);

    {
        char z[24];
        sprintf(z, "[%s]", opts->pzPROGNAME);
        txt = strstr(txt, z);
    }

    if (txt != ((void*)0))
        txt = strchr(txt, NL);
    return txt;
}
