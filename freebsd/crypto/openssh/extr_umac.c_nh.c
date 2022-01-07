
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nh_key; } ;
typedef TYPE_1__ nh_ctx ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;


 int nh_aux (int ,int const*,int *,int) ;

__attribute__((used)) static void nh(nh_ctx *hc, const UINT8 *buf, UINT32 padded_len,
               UINT32 unpadded_len, UINT8 *result)




{
    UINT32 nbits;


    nbits = (unpadded_len << 3);

    ((UINT64 *)result)[0] = nbits;
    nh_aux(hc->nh_key, buf, result, padded_len);
}
