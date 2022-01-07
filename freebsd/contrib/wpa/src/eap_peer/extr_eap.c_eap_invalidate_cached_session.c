
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;


 int eap_deinit_prev_method (struct eap_sm*,char*) ;

void eap_invalidate_cached_session(struct eap_sm *sm)
{
 if (sm)
  eap_deinit_prev_method(sm, "invalidate");
}
