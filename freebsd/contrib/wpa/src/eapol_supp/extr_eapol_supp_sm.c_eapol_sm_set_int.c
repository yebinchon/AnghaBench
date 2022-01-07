
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {unsigned int idleWhile; } ;
typedef enum eapol_int_var { ____Placeholder_eapol_int_var } eapol_int_var ;



 int eapol_enable_timer_tick (struct eapol_sm*) ;

__attribute__((used)) static void eapol_sm_set_int(void *ctx, enum eapol_int_var variable,
        unsigned int value)
{
 struct eapol_sm *sm = ctx;
 if (sm == ((void*)0))
  return;
 switch (variable) {
 case 128:
  sm->idleWhile = value;
  if (sm->idleWhile > 0)
   eapol_enable_timer_tick(sm);
  break;
 }
}
