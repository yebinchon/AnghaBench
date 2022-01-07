
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ challenge_response_authentication; scalar_t__ kbd_interactive_authentication; scalar_t__ password_authentication; } ;


 TYPE_1__ options ;
 int sshpam_maxtries_reached ;

void
sshpam_set_maxtries_reached(int reached)
{
 if (reached == 0 || sshpam_maxtries_reached)
  return;
 sshpam_maxtries_reached = 1;
 options.password_authentication = 0;
 options.kbd_interactive_authentication = 0;
 options.challenge_response_authentication = 0;
}
