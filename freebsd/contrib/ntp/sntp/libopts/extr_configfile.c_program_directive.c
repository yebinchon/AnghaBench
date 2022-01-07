
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ttlfmt ;
struct TYPE_3__ {char const* pzProgName; } ;
typedef TYPE_1__ tOptions ;


 char* AGALOC (size_t,char*) ;
 int AGFREE (char*) ;
 scalar_t__ IS_END_XML_TOKEN_CHAR (char) ;
 char NUL ;
 char* SPN_WHITESPACE_CHARS (char*) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ strneqvcmp (char*,char const*,int) ;
 char* strstr (char*,char*) ;
 char const* zCfgProg ;

__attribute__((used)) static char *
program_directive(tOptions * opts, char * txt)
{
    static char const ttlfmt[] = "<?";
    size_t ttl_len = sizeof(ttlfmt) + strlen(zCfgProg);
    char * ttl = AGALOC(ttl_len, "prog title");
    size_t name_len = strlen(opts->pzProgName);

    memcpy(ttl, ttlfmt, sizeof(ttlfmt) - 1);
    memcpy(ttl + sizeof(ttlfmt) - 1, zCfgProg, ttl_len - (sizeof(ttlfmt) - 1));

    do {
        txt = SPN_WHITESPACE_CHARS(txt+1);

        if ( (strneqvcmp(txt, opts->pzProgName, (int)name_len) == 0)
           && (IS_END_XML_TOKEN_CHAR(txt[name_len])) ) {
            txt += name_len;
            break;
        }

        txt = strstr(txt, ttl);
    } while (txt != ((void*)0));

    AGFREE(ttl);
    if (txt != ((void*)0))
        for (;;) {
            if (*txt == NUL) {
                txt = ((void*)0);
                break;
            }
            if (*(txt++) == '>')
                break;
        }

    return txt;
}
