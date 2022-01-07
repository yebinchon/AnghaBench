
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int dummy; } ;
struct uni_abr_rec {int present; int adtf; int cdf; int trm; int nrm; } ;


 int UNI_ABR_REC_ADTF_P ;
 int UNI_ABR_REC_CDF_P ;
 int UNI_ABR_REC_NRM_P ;
 int UNI_ABR_REC_TRM_P ;
 int uni_print_entry (struct unicx*,char*,char*,int ) ;

__attribute__((used)) static void
print_abr_rec(struct unicx *cx, struct uni_abr_rec *rec)
{
 if(rec->present & UNI_ABR_REC_NRM_P)
  uni_print_entry(cx, "nrm", "%d", rec->nrm);
 if(rec->present & UNI_ABR_REC_TRM_P)
  uni_print_entry(cx, "trm", "%d", rec->trm);
 if(rec->present & UNI_ABR_REC_CDF_P)
  uni_print_entry(cx, "cdf", "%d", rec->cdf);
 if(rec->present & UNI_ABR_REC_ADTF_P)
  uni_print_entry(cx, "adtf", "%d", rec->adtf);
}
