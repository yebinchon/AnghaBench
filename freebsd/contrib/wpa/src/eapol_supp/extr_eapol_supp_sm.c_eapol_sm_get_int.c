
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {unsigned int idleWhile; } ;
typedef enum eapol_int_var { ____Placeholder_eapol_int_var } eapol_int_var ;




__attribute__((used)) static unsigned int eapol_sm_get_int(void *ctx, enum eapol_int_var variable)
{
 struct eapol_sm *sm = ctx;
 if (sm == ((void*)0))
  return 0;
 switch (variable) {
 case 128:
  return sm->idleWhile;
 }
 return 0;
}
