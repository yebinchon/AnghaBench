
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unisve_blli_id2 {scalar_t__ proto; scalar_t__ user; } ;


 int COMMON_OVERLAP (struct unisve_blli_id2 const*,struct unisve_blli_id2 const*) ;
 scalar_t__ UNI_BLLI_L2_USER ;

int
unisve_overlap_blli_id2(const struct unisve_blli_id2 *s1,
    const struct unisve_blli_id2 *s2)
{
 COMMON_OVERLAP(s1, s2);

 return (s1->proto == s2->proto &&
     (s1->proto != UNI_BLLI_L2_USER || s1->user == s2->user));
}
