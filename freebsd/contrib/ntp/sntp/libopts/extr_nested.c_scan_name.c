
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int strVal; int nestVal; } ;
struct TYPE_6__ {TYPE_1__ v; } ;
typedef TYPE_2__ tOptionValue ;




 int OPTION_LOAD_COOKED ;
 char* SPN_HORIZ_WHITE_CHARS (char const*) ;
 char* SPN_VALUE_NAME_CHARS (char const*) ;
 TYPE_2__* add_string (int *,char const*,size_t,char const*,size_t) ;
 int ao_string_cook (int ,int *) ;
 int option_load_mode ;
 int remove_continuation (int ) ;
 char* scan_q_str (char const*) ;

__attribute__((used)) static char const *
scan_name(char const * name, tOptionValue * res)
{
    tOptionValue * new_val;
    char const * pzScan = name+1;
    char const * pzVal;
    size_t nm_len = 1;
    size_t d_len = 0;





    pzScan = SPN_VALUE_NAME_CHARS(name + 1);
    if (pzScan[-1] == ':')
        pzScan--;
    nm_len = (size_t)(pzScan - name);

    pzScan = SPN_HORIZ_WHITE_CHARS(pzScan);

 re_switch:

    switch (*pzScan) {
    case '=':
    case ':':
        pzScan = SPN_HORIZ_WHITE_CHARS(pzScan + 1);
        if ((*pzScan == '=') || (*pzScan == ':'))
            goto default_char;
        goto re_switch;

    case 129:
    case ',':
        pzScan++;


    case 128:
        add_string(&(res->v.nestVal), name, nm_len, ((void*)0), (size_t)0);
        break;

    case '"':
    case '\'':
        pzVal = pzScan;
        pzScan = scan_q_str(pzScan);
        d_len = (size_t)(pzScan - pzVal);
        new_val = add_string(&(res->v.nestVal), name, nm_len, pzVal,
                         d_len);
        if ((new_val != ((void*)0)) && (option_load_mode == OPTION_LOAD_COOKED))
            ao_string_cook(new_val->v.strVal, ((void*)0));
        break;

    default:
    default_char:




        pzVal = pzScan;
        for (;;) {
            char ch = *(pzScan++);
            switch (ch) {
            case 128:
                pzScan--;
                d_len = (size_t)(pzScan - pzVal);
                goto string_done;


            case 129:
                if ( (pzScan > pzVal + 2)
                    && (pzScan[-2] == '\\')
                    && (pzScan[ 0] != 128))
                    continue;


            case ',':
                d_len = (size_t)(pzScan - pzVal) - 1;
            string_done:
                new_val = add_string(&(res->v.nestVal), name, nm_len,
                                     pzVal, d_len);
                if (new_val != ((void*)0))
                    remove_continuation(new_val->v.strVal);
                goto leave_scan_name;
            }
        }
        break;
    } leave_scan_name:;

    return pzScan;
}
