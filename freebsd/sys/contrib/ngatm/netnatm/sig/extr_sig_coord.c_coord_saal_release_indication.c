
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni {int custat; } ;


 int ASSERT (int ,char*) ;




 int SIGC_LINK_RELEASE_indication ;
 int UNI_FAC_COORD ;
 int VERBOSE0 (struct uni*,int ,char*,int) ;
 int set_custat (struct uni*,int const) ;
 int sig_all_calls (struct uni*,int ) ;

__attribute__((used)) static void
coord_saal_release_indication(struct uni *uni)
{
 switch (uni->custat) {

   case 131:
   case 129:
  VERBOSE0(uni, UNI_FAC_COORD,
      "signal saal_release.indication in CU%u", uni->custat);
  break;

   case 130:
   case 128:




  sig_all_calls(uni, SIGC_LINK_RELEASE_indication);
  set_custat(uni, 131);
  break;

   default:
  ASSERT(0, ("CU_STAT*"));
 }
}
