
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs {int dummy; } ;


 int CK_RHS_PROBE_INSERT ;
 int ck_rhs_put_internal (struct ck_rhs*,unsigned long,void const*,int ) ;

bool
ck_rhs_put(struct ck_rhs *hs,
    unsigned long h,
    const void *key)
{

 return ck_rhs_put_internal(hs, h, key, CK_RHS_PROBE_INSERT);
}
