
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt1_entry_t ;


 int is_managed (int ) ;
 int pte1_pa (int ) ;

__attribute__((used)) static __inline bool
pte1_is_managed(pt1_entry_t pte1)
{

 return (is_managed(pte1_pa(pte1)));
}
