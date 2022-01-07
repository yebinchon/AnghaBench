
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nh_key; } ;
typedef TYPE_1__ nh_ctx ;
typedef int aes_int_key ;


 int endian_convert_if_le (int ,int,int) ;
 int kdf (int ,int ,int,int) ;
 int nh_reset (TYPE_1__*) ;

__attribute__((used)) static void nh_init(nh_ctx *hc, aes_int_key prf_key)

{
    kdf(hc->nh_key, prf_key, 1, sizeof(hc->nh_key));
    endian_convert_if_le(hc->nh_key, 4, sizeof(hc->nh_key));
    nh_reset(hc);
}
