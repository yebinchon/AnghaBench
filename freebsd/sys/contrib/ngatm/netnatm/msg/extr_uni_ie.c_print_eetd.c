
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unicx {int dummy; } ;
struct TYPE_2__ {int present; } ;
struct uni_ie_eetd {TYPE_1__ h; int pmtd; int pctd; int maximum; int cumulative; } ;


 int UNI_EETD_ANYMAX ;
 int UNI_EETD_CUM_P ;
 int UNI_EETD_MAX_P ;
 int UNI_EETD_NET_P ;
 int UNI_EETD_PCTD_P ;
 int UNI_EETD_PMTD_P ;
 int uni_print_entry (struct unicx*,char*,char*,...) ;
 int uni_print_flag (char*,struct unicx*) ;
 int uni_print_ieend (struct unicx*) ;
 scalar_t__ uni_print_iehdr (char*,TYPE_1__*,struct unicx*) ;

__attribute__((used)) static void
print_eetd(struct uni_ie_eetd *ie, struct unicx *cx)
{
 if (uni_print_iehdr("eetd", &ie->h, cx))
  return;

 if (ie->h.present & UNI_EETD_CUM_P)
  uni_print_entry(cx, "cum", "%u", ie->cumulative);
 if (ie->h.present & UNI_EETD_MAX_P) {
  if (ie->maximum == UNI_EETD_ANYMAX)
   uni_print_entry(cx, "max", "any");
  else
   uni_print_entry(cx, "max", "%u", ie->maximum);
 }
 if (ie->h.present & UNI_EETD_PCTD_P)
  uni_print_entry(cx, "pnni_cum", "%u", ie->pctd);
 if (ie->h.present & UNI_EETD_PMTD_P)
  uni_print_entry(cx, "pnni_max", "%u", ie->pmtd);
 if (ie->h.present & UNI_EETD_NET_P)
  uni_print_flag("netgen", cx);

 uni_print_ieend(cx);
}
