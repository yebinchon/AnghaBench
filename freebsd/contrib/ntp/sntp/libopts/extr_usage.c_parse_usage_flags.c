
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t fnm_len; int fnm_name; } ;
typedef TYPE_1__ ao_flag_names_t ;


 int AOUF_COUNT ;
 int IS_END_LIST_ENTRY_CHAR (char const) ;

 char* SPN_WHITESPACE_CHARS (char const*) ;
 char* getenv (char*) ;
 scalar_t__ strneqvcmp (char const*,int ,int) ;

__attribute__((used)) static unsigned int
parse_usage_flags(ao_flag_names_t const * fnt, char const * txt)
{
    unsigned int res = 0;




    if (txt == ((void*)0)) {
        txt = getenv("AUTOOPTS_USAGE");
        if (txt == ((void*)0))
            return 0;
    }

    txt = SPN_WHITESPACE_CHARS(txt);
    if (*txt == 128)
        return 0;





    for (;;) {
        int ix = 0;

        for (;;) {
            if (strneqvcmp(txt, fnt[ix].fnm_name, (int)fnt[ix].fnm_len) == 0)
                break;
            if (++ix >= AOUF_COUNT)
                return 0;
        }





        if (! IS_END_LIST_ENTRY_CHAR(txt[fnt[ix].fnm_len]))
            return 0;

        res |= 1U << ix;
        txt = SPN_WHITESPACE_CHARS(txt + fnt[ix].fnm_len);

        switch (*txt) {
        case 128:
            return res;

        case ',':
            txt = SPN_WHITESPACE_CHARS(txt + 1);


        default:
            continue;
        }
    }
}
