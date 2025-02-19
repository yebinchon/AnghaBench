
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uhash_ctx_t ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_3__ {int * poly_key_8; void** poly_accum; } ;


 int STREAMS ;
 int p64 ;
 void* poly64 (void*,int ,int) ;

__attribute__((used)) static void poly_hash(uhash_ctx_t hc, UINT32 data_in[])
{
    int i;
    UINT64 *data=(UINT64*)data_in;

    for (i = 0; i < STREAMS; i++) {
        if ((UINT32)(data[i] >> 32) == 0xfffffffful) {
            hc->poly_accum[i] = poly64(hc->poly_accum[i],
                                       hc->poly_key_8[i], p64 - 1);
            hc->poly_accum[i] = poly64(hc->poly_accum[i],
                                       hc->poly_key_8[i], (data[i] - 59));
        } else {
            hc->poly_accum[i] = poly64(hc->poly_accum[i],
                                       hc->poly_key_8[i], data[i]);
        }
    }
}
