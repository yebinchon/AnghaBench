
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** tkn_list; } ;
typedef TYPE_1__ token_list_t ;
typedef int ch_t ;


 char* BRK_WHITESPACE_CHARS (char const*) ;
 int ENOENT ;
 int ENOMEM ;
 char const NUL ;
 char* SPN_WHITESPACE_CHARS (char const*) ;
 int errno ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static token_list_t *
alloc_token_list(char const * str)
{
    token_list_t * res;

    int max_token_ct = 2;

    if (str == ((void*)0)) goto enoent_res;





    str = SPN_WHITESPACE_CHARS(str);
    if (*str == NUL) goto enoent_res;






    {
        char const * pz = str;

        do {
            max_token_ct++;
            pz = BRK_WHITESPACE_CHARS(pz+1);
            pz = SPN_WHITESPACE_CHARS(pz);
        } while (*pz != NUL);

        res = malloc(sizeof(*res) + (size_t)(pz - str)
                     + ((size_t)max_token_ct * sizeof(ch_t *)));
    }

    if (res == ((void*)0))
        errno = ENOMEM;
    else res->tkn_list[0] = (ch_t *)(res->tkn_list + (max_token_ct - 1));

    return res;

    enoent_res:

    errno = ENOENT;
    return ((void*)0);
}
