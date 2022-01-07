
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CK_MD_VMA_BITS ;
 unsigned int CK_RHS_MODE_OBJECT ;
 scalar_t__ CK_RHS_VMA (void const*) ;

__attribute__((used)) static inline const void *
ck_rhs_marshal(unsigned int mode, const void *key, unsigned long h)
{
 (void)mode;
 (void)h;

 return key;

}
