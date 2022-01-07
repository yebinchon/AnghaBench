
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int CARP_MAXSTATE ;
 int * carp_states ;
 int carpr_state ;
 int carpr_vhid ;
 int errx (int,char*) ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static void
setcarp_state(const char *val, int d, int s, const struct afswtch *afp)
{
 int i;

 if (carpr_vhid == -1)
  errx(1, "state requires vhid");

 for (i = 0; i <= CARP_MAXSTATE; i++)
  if (strcasecmp(carp_states[i], val) == 0) {
   carpr_state = i;
   return;
  }

 errx(1, "unknown state");
}
