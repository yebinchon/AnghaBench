
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CK_HS_MODE_OBJECT ;
 scalar_t__ CK_HS_VMA (void const*) ;
 unsigned long CK_MD_VMA_BITS ;

__attribute__((used)) static inline const void *
ck_hs_marshal(unsigned int mode, const void *key, unsigned long h)
{
 (void)mode;
 (void)h;

 return key;

}
