
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_keys {int * SK_pr; int * SK_pi; int * SK_er; int * SK_ei; int * SK_ar; int * SK_ai; int * SK_d; } ;


 int os_free (int *) ;

void ikev2_free_keys(struct ikev2_keys *keys)
{
 os_free(keys->SK_d);
 os_free(keys->SK_ai);
 os_free(keys->SK_ar);
 os_free(keys->SK_ei);
 os_free(keys->SK_er);
 os_free(keys->SK_pi);
 os_free(keys->SK_pr);
 keys->SK_d = keys->SK_ai = keys->SK_ar = keys->SK_ei = keys->SK_er =
  keys->SK_pi = keys->SK_pr = ((void*)0);
}
