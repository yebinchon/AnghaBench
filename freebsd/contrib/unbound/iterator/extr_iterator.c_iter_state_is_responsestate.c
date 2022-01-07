
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iter_state { ____Placeholder_iter_state } iter_state ;
int
iter_state_is_responsestate(enum iter_state s)
{
 switch(s) {
  case 129 :
  case 131 :
  case 130 :
  case 128 :
  case 132 :
   return 0;
  default:
   break;
 }
 return 1;
}
