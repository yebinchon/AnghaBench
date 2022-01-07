
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_11_elems {int supp_rates_len; int ext_supp_rates_len; int * ext_supp_rates; int * supp_rates; } ;


 scalar_t__ is_11b (int ) ;

int supp_rates_11b_only(struct ieee802_11_elems *elems)
{
 int num_11b = 0, num_others = 0;
 int i;

 if (elems->supp_rates == ((void*)0) && elems->ext_supp_rates == ((void*)0))
  return 0;

 for (i = 0; elems->supp_rates && i < elems->supp_rates_len; i++) {
  if (is_11b(elems->supp_rates[i]))
   num_11b++;
  else
   num_others++;
 }

 for (i = 0; elems->ext_supp_rates && i < elems->ext_supp_rates_len;
      i++) {
  if (is_11b(elems->ext_supp_rates[i]))
   num_11b++;
  else
   num_others++;
 }

 return num_11b > 0 && num_others == 0;
}
