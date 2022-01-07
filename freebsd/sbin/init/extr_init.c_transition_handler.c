
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_HALT ;
 int RB_POWERCYCLE ;
 int RB_POWEROFF ;
 int Reboot ;
 int TRUE ;
 int catatonia ;
 int clean_ttys ;
 int current_state ;
 int death ;
 int death_single ;
 int howto ;
 int multi_user ;
 int read_ttys ;
 int requested_transition ;
 int reroot ;
 int runcom ;

__attribute__((used)) static void
transition_handler(int sig)
{

 switch (sig) {
 case 134:
  if (current_state == read_ttys || current_state == multi_user ||
      current_state == clean_ttys || current_state == catatonia)
   requested_transition = clean_ttys;
  break;
 case 128:
 case 129:
  howto = sig == 129 ? RB_POWEROFF : RB_POWERCYCLE;
 case 130:
  howto |= RB_HALT;
 case 133:
  Reboot = TRUE;
 case 132:
  if (current_state == read_ttys || current_state == multi_user ||
      current_state == clean_ttys || current_state == catatonia)
   requested_transition = death;
  else
   requested_transition = death_single;
  break;
 case 131:
  if (current_state == runcom || current_state == read_ttys ||
      current_state == clean_ttys ||
      current_state == multi_user || current_state == catatonia)
   requested_transition = catatonia;
  break;
 case 135:
  requested_transition = reroot;
  break;
 default:
  requested_transition = 0;
  break;
 }
}
