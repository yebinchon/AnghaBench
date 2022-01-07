
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt_entry_t ;


 int ATTR_DESCR_MASK ;
 int L3_PAGE ;

__attribute__((used)) static __inline int
pmap_l3_valid(pt_entry_t l3)
{

 return ((l3 & ATTR_DESCR_MASK) == L3_PAGE);
}
