
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes_hashed; int state; int * nh_key; } ;
typedef TYPE_1__ nh_ctx ;
typedef int UINT8 ;
typedef int UINT32 ;


 int nh_aux (int *,int const*,int ,int ) ;

__attribute__((used)) static void nh_transform(nh_ctx *hc, const UINT8 *buf, UINT32 nbytes)





{
    UINT8 *key;

    key = hc->nh_key + hc->bytes_hashed;
    nh_aux(key, buf, hc->state, nbytes);
}
