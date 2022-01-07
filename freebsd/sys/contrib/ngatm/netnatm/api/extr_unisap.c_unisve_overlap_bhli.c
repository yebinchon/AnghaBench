
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unisve_bhli {scalar_t__ type; scalar_t__ len; int info; } ;


 int COMMON_OVERLAP (struct unisve_bhli const*,struct unisve_bhli const*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
unisve_overlap_bhli(const struct unisve_bhli *s1, const struct unisve_bhli *s2)
{
 COMMON_OVERLAP(s1, s2);

 return (s1->type == s2->type && s1->len == s2->len &&
     memcmp(s1->info, s2->info, s1->len) == 0);
}
