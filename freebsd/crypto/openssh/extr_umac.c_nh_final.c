
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int next_data_empty; int bytes_hashed; scalar_t__ state; scalar_t__ data; } ;
typedef TYPE_1__ nh_ctx ;
typedef int UINT8 ;
typedef scalar_t__ UINT64 ;


 int L1_PAD_BOUNDARY ;
 int nh_reset (TYPE_1__*) ;
 int nh_transform (TYPE_1__*,scalar_t__,int) ;
 int zero_pad (scalar_t__,int) ;

__attribute__((used)) static void nh_final(nh_ctx *hc, UINT8 *result)







{
    int nh_len, nbits;

    if (hc->next_data_empty != 0) {
        nh_len = ((hc->next_data_empty + (L1_PAD_BOUNDARY - 1)) &
                                                ~(L1_PAD_BOUNDARY - 1));
        zero_pad(hc->data + hc->next_data_empty,
                                          nh_len - hc->next_data_empty);
        nh_transform(hc, hc->data, nh_len);
        hc->bytes_hashed += hc->next_data_empty;
    } else if (hc->bytes_hashed == 0) {
 nh_len = L1_PAD_BOUNDARY;
        zero_pad(hc->data, L1_PAD_BOUNDARY);
        nh_transform(hc, hc->data, nh_len);
    }

    nbits = (hc->bytes_hashed << 3);
    ((UINT64 *)result)[0] = ((UINT64 *)hc->state)[0] + nbits;
    nh_reset(hc);
}
