
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptState ;


 int IS_WHITESPACE_CHAR (char) ;


 int OPTION_LOAD_UNCOOKED ;
 char* SPN_VALUE_NAME_CHARS (char*) ;
 char* SPN_WHITESPACE_CHARS (char*) ;
 int load_opt_line (int *,int *,char*,int,int ) ;
 char* strchr (char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static char *
handle_cfg(tOptions * opts, tOptState * ost, char * txt, int dir)
{
    char * pzName = txt++;
    char * pzEnd = strchr(txt, 129);

    if (pzEnd == ((void*)0))
        return txt + strlen(txt);

    txt = SPN_VALUE_NAME_CHARS(txt);
    txt = SPN_WHITESPACE_CHARS(txt);
    if (txt > pzEnd) {
    name_only:
        *pzEnd++ = 128;
        load_opt_line(opts, ost, pzName, dir, OPTION_LOAD_UNCOOKED);
        return pzEnd;
    }






    if ((*txt == '=') || (*txt == ':')) {
        txt = SPN_WHITESPACE_CHARS(txt+1);
        if (txt > pzEnd)
            goto name_only;
    } else if (! IS_WHITESPACE_CHAR(txt[-1]))
        return ((void*)0);





    if (pzEnd[-1] == '\\') {
        char * pcD = pzEnd-1;
        char * pcS = pzEnd;

        for (;;) {
            char ch = *(pcS++);
            switch (ch) {
            case 128:
                pcS = ((void*)0);


            case 129:
                *pcD = 128;
                pzEnd = pcS;
                goto copy_done;

            case '\\':
                if (*pcS == 129)
                    ch = *(pcS++);

            default:
                *(pcD++) = ch;
            }
        } copy_done:;

    } else {



        *(pzEnd++) = 128;
    }





    load_opt_line(opts, ost, pzName, dir, OPTION_LOAD_UNCOOKED);

    return pzEnd;
}
