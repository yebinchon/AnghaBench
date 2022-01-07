
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; void const** data; int num_alloc; } ;
typedef TYPE_1__ OPENSSL_STACK ;


 int CRYPTO_F_SK_RESERVE ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 void** OPENSSL_realloc (void*,int) ;
 void const** OPENSSL_zalloc (int) ;
 int compute_growth (int,int) ;
 int max_nodes ;
 int min_nodes ;

__attribute__((used)) static int sk_reserve(OPENSSL_STACK *st, int n, int exact)
{
    const void **tmpdata;
    int num_alloc;


    if (n > max_nodes - st->num)
        return 0;


    num_alloc = st->num + n;
    if (num_alloc < min_nodes)
        num_alloc = min_nodes;


    if (st->data == ((void*)0)) {




        if ((st->data = OPENSSL_zalloc(sizeof(void *) * num_alloc)) == ((void*)0)) {
            CRYPTOerr(CRYPTO_F_SK_RESERVE, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        st->num_alloc = num_alloc;
        return 1;
    }

    if (!exact) {
        if (num_alloc <= st->num_alloc)
            return 1;
        num_alloc = compute_growth(num_alloc, st->num_alloc);
        if (num_alloc == 0)
            return 0;
    } else if (num_alloc == st->num_alloc) {
        return 1;
    }

    tmpdata = OPENSSL_realloc((void *)st->data, sizeof(void *) * num_alloc);
    if (tmpdata == ((void*)0))
        return 0;

    st->data = tmpdata;
    st->num_alloc = num_alloc;
    return 1;
}
