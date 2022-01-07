
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs {int dummy; } ;


 int CK_HS_PROBE_INSERT ;
 int ck_hs_put_internal (struct ck_hs*,unsigned long,void const*,int ) ;

bool
ck_hs_put(struct ck_hs *hs,
    unsigned long h,
    const void *key)
{

 return ck_hs_put_internal(hs, h, key, CK_HS_PROBE_INSERT);
}
