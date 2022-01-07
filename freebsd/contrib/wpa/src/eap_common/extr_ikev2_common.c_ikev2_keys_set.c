
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_keys {scalar_t__ SK_pr; scalar_t__ SK_pi; scalar_t__ SK_er; scalar_t__ SK_ei; scalar_t__ SK_ar; scalar_t__ SK_ai; scalar_t__ SK_d; } ;



int ikev2_keys_set(struct ikev2_keys *keys)
{
 return keys->SK_d && keys->SK_ai && keys->SK_ar && keys->SK_ei &&
  keys->SK_er && keys->SK_pi && keys->SK_pr;
}
