
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt2_entry_t ;


 int is_managed (int ) ;
 int pte2_pa (int ) ;

__attribute__((used)) static __inline bool
pte2_is_managed(pt2_entry_t pte2)
{

 return (is_managed(pte2_pa(pte2)));
}
