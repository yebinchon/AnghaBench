
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;


 int PT_EPT ;
 int ept_pmap_flags ;
 int pmap_pinit_type (int ,int ,int ) ;

__attribute__((used)) static int
ept_pinit(pmap_t pmap)
{

 return (pmap_pinit_type(pmap, PT_EPT, ept_pmap_flags));
}
