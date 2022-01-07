
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uhash_ctx_t ;
typedef int u_char ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_3__ {scalar_t__* poly_accum; int* ip_trans; scalar_t__ ip_keys; } ;


 int STORE_UINT32_BIG (int *,int) ;
 int STREAMS ;
 int ip_aux (int ,scalar_t__,scalar_t__) ;
 int ip_reduce_p36 (int ) ;
 scalar_t__ p64 ;

__attribute__((used)) static void ip_long(uhash_ctx_t ahc, u_char *res)
{
    int i;
    UINT64 t;

    for (i = 0; i < STREAMS; i++) {

        if (ahc->poly_accum[i] >= p64)
            ahc->poly_accum[i] -= p64;
        t = ip_aux(0,ahc->ip_keys+(i*4), ahc->poly_accum[i]);
        STORE_UINT32_BIG((UINT32 *)res+i,
                         ip_reduce_p36(t) ^ ahc->ip_trans[i]);
    }
}
