
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unisve_selector {scalar_t__ selector; } ;


 int COMMON_OVERLAP (struct unisve_selector const*,struct unisve_selector const*) ;

int
unisve_overlap_selector(const struct unisve_selector *s1,
    const struct unisve_selector *s2)
{
 COMMON_OVERLAP(s1, s2);

 return (s1->selector == s2->selector);
}
