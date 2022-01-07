
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbor_report {scalar_t__ preference; int preference_present; } ;



__attribute__((used)) static int cand_pref_compar(const void *a, const void *b)
{
 const struct neighbor_report *aa = a;
 const struct neighbor_report *bb = b;

 if (!aa->preference_present && !bb->preference_present)
  return 0;
 if (!aa->preference_present)
  return 1;
 if (!bb->preference_present)
  return -1;
 if (bb->preference > aa->preference)
  return 1;
 if (bb->preference < aa->preference)
  return -1;
 return 0;
}
