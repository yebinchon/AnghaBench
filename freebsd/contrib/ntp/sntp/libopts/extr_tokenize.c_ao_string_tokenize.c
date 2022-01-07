
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int** tkn_list; size_t tkn_ct; } ;
typedef TYPE_1__ token_list_t ;
typedef int ch_t ;


 int EINVAL ;
 scalar_t__ IS_WHITESPACE_CHAR (char const) ;

 char* SPN_WHITESPACE_CHARS (char const*) ;
 TYPE_1__* alloc_token_list (char const*) ;
 int copy_cooked (int**,char const**) ;
 int copy_raw (int**,char const**) ;
 int errno ;
 int free (TYPE_1__*) ;

token_list_t *
ao_string_tokenize(char const * str)
{
    token_list_t * res = alloc_token_list(str);
    ch_t * pzDest;




    if (res == ((void*)0))
        return res;

    pzDest = (ch_t *)(res->tkn_list[0]);
    res->tkn_ct = 0;

    do {
        res->tkn_list[ res->tkn_ct++ ] = pzDest;
        for (;;) {
            int ch = (ch_t)*str;
            if (IS_WHITESPACE_CHAR(ch)) {
            found_white_space:
                str = SPN_WHITESPACE_CHARS(str+1);
                break;
            }

            switch (ch) {
            case '"':
                copy_cooked(&pzDest, &str);
                if (str == ((void*)0)) {
                    free(res);
                    errno = EINVAL;
                    return ((void*)0);
                }
                if (IS_WHITESPACE_CHAR(*str))
                    goto found_white_space;
                break;

            case '\'':
                copy_raw(&pzDest, &str);
                if (str == ((void*)0)) {
                    free(res);
                    errno = EINVAL;
                    return ((void*)0);
                }
                if (IS_WHITESPACE_CHAR(*str))
                    goto found_white_space;
                break;

            case 128:
                goto copy_done;

            default:
                str++;
                *(pzDest++) = (unsigned char)ch;
            }
        } copy_done:;




        *(pzDest++) = 128;
    } while (*str != 128);

    res->tkn_list[ res->tkn_ct ] = ((void*)0);

    return res;
}
