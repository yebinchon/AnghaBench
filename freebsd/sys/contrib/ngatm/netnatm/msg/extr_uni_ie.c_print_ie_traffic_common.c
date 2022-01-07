
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct unicx {int dummy; } ;
struct uni_xtraffic {scalar_t__ bdisc; scalar_t__ fdisc; scalar_t__ btag; scalar_t__ ftag; int babr1; int bmbs1; int bmbs0; int bscr1; int bscr0; int bpcr1; int bpcr0; int fabr1; int fmbs1; int fmbs0; int fscr1; int fscr0; int fpcr1; int fpcr0; } ;


 int UNI_TRAFFIC_BABR1_P ;
 int UNI_TRAFFIC_BEST_P ;
 int UNI_TRAFFIC_BMBS0_P ;
 int UNI_TRAFFIC_BMBS1_P ;
 int UNI_TRAFFIC_BPCR0_P ;
 int UNI_TRAFFIC_BPCR1_P ;
 int UNI_TRAFFIC_BSCR0_P ;
 int UNI_TRAFFIC_BSCR1_P ;
 int UNI_TRAFFIC_FABR1_P ;
 int UNI_TRAFFIC_FMBS0_P ;
 int UNI_TRAFFIC_FMBS1_P ;
 int UNI_TRAFFIC_FPCR0_P ;
 int UNI_TRAFFIC_FPCR1_P ;
 int UNI_TRAFFIC_FSCR0_P ;
 int UNI_TRAFFIC_FSCR1_P ;
 int UNI_TRAFFIC_MOPT_P ;
 int uni_print_entry (struct unicx*,char*,char*) ;
 int uni_print_flag (char*,struct unicx*) ;
 int uni_printf (struct unicx*,char*,...) ;
 int uni_putc (char,struct unicx*) ;

__attribute__((used)) static void
print_ie_traffic_common(struct unicx *cx, u_int present, struct uni_xtraffic *ie)
{
 uni_print_entry(cx, "fwd", "(");
 if(present & UNI_TRAFFIC_FPCR0_P)
  uni_printf(cx, "%u", ie->fpcr0);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_FPCR1_P)
  uni_printf(cx, "%u", ie->fpcr1);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_FSCR0_P)
  uni_printf(cx, "%u", ie->fscr0);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_FSCR1_P)
  uni_printf(cx, "%u", ie->fscr1);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_FMBS0_P)
  uni_printf(cx, "%u", ie->fmbs0);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_FMBS1_P)
  uni_printf(cx, "%u", ie->fmbs1);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_FABR1_P)
  uni_printf(cx, "%u", ie->fabr1);
 uni_printf(cx, ")");

 uni_print_entry(cx, "bwd", "(");
 if(present & UNI_TRAFFIC_BPCR0_P)
  uni_printf(cx, "%u", ie->bpcr0);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_BPCR1_P)
  uni_printf(cx, "%u", ie->bpcr1);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_BSCR0_P)
  uni_printf(cx, "%u", ie->bscr0);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_BSCR1_P)
  uni_printf(cx, "%u", ie->bscr1);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_BMBS0_P)
  uni_printf(cx, "%u", ie->bmbs0);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_BMBS1_P)
  uni_printf(cx, "%u", ie->bmbs1);
 uni_putc(',', cx);
 if(present & UNI_TRAFFIC_BABR1_P)
  uni_printf(cx, "%u", ie->babr1);
 uni_printf(cx, ")");

 if(present & UNI_TRAFFIC_BEST_P)
  uni_print_flag("best_effort", cx);
 if(present & UNI_TRAFFIC_MOPT_P) {
  uni_print_entry(cx, "tag", "(");
  if(ie->ftag)
   uni_printf(cx, "fwd");
  uni_putc(',', cx);
  if(ie->btag)
   uni_printf(cx, "bwd");
  uni_putc(')', cx);

  uni_print_entry(cx, "disc", "(");
  if(ie->fdisc)
   uni_printf(cx, "fwd");
  uni_putc(',', cx);
  if(ie->bdisc)
   uni_printf(cx, "bwd");
  uni_putc(')', cx);
 }
}
