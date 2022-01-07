
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {scalar_t__ btag; scalar_t__ ftag; } ;
struct TYPE_5__ {int present; } ;
struct uni_ie_traffic {TYPE_3__ t; TYPE_2__ h; } ;
struct TYPE_4__ {int present; } ;
struct uni_ie_bearer {int bclass; int atc; TYPE_1__ h; } ;
typedef enum uni_traffic_class { ____Placeholder_uni_traffic_class } uni_traffic_class ;


 int BBAD (char*) ;
 int FBAD (char*) ;
 int NOBE (char*) ;
 int NOBT (char*) ;
 int NOFT (char*) ;
 int UNI_BEARER_ATC_P ;






 int UNI_TRAFFIC_BEST_P ;
 int UNI_TRAFFIC_BPCR0_P ;
 int UNI_TRAFFIC_BPCR1_P ;

 int UNI_TRAFFIC_CBR2 ;
 int UNI_TRAFFIC_CBR3 ;
 int UNI_TRAFFIC_FPCR0_P ;
 int UNI_TRAFFIC_FPCR1_P ;
 int UNI_TRAFFIC_MOPT_P ;
 int UNI_TRAFFIC_UBR1 ;
 int UNI_TRAFFIC_UBR2 ;

 int UNI_TRAFFIC_nrtVBR2 ;
 int UNI_TRAFFIC_nrtVBR3 ;
 int UNI_TRAFFIC_nrtVBR4 ;
 int UNI_TRAFFIC_nrtVBR5 ;
 int UNI_TRAFFIC_nrtVBR6 ;

 int UNI_TRAFFIC_rtVBR2 ;
 int UNI_TRAFFIC_rtVBR3 ;
 int UNI_TRAFFIC_rtVBR4 ;
 int UNI_TRAFFIC_rtVBR5 ;
 int UNI_TRAFFIC_rtVBR6 ;
 int bcbr3 ;
 int bmask ;
 int bvbr16 ;
 int bvbr23 ;
 int bvbr4 ;
 int fcbr3 ;
 int fmask ;
 int fvbr16 ;
 int fvbr23 ;
 int fvbr4 ;
 int snprintf (char*,size_t,char*,...) ;

int
uni_classify_traffic(const struct uni_ie_bearer *bearer,
    const struct uni_ie_traffic *traffic,
    enum uni_traffic_class *fclass, enum uni_traffic_class *bclass,
    char *ebuf, size_t ebufsiz)
{
 u_int tclass;
 u_int ft, bt, be, ftag, btag;


 switch (bearer->bclass) {

   case 148:
  if (!(bearer->h.present & UNI_BEARER_ATC_P)) {
   tclass = 152;
   break;
  }
  switch (bearer->atc) {

    case 139:
   tclass = 130;
   break;

    default:
   snprintf(ebuf, ebufsiz, "bad ATC=%#02x for BCOB-A",
       bearer->atc);
   return (-1);
  }
  break;

   case 134:
  if (!(bearer->h.present & UNI_BEARER_ATC_P)) {
   tclass = 151;
   break;
  }
  switch (bearer->atc) {

    case 135:
   tclass = 128;
   break;

    case 136:
   tclass = 150;
   break;

    case 137:
   tclass = 129;
   break;

    case 141:
   tclass = 131;
   break;

    default:
   snprintf(ebuf, ebufsiz, "bad ATC=%#02x for BCOB-C",
       bearer->atc);
   return (-1);
  }
  break;

   case 132:
  if (!(bearer->h.present & UNI_BEARER_ATC_P)) {
   tclass = 151;
   break;
  }
  switch (bearer->atc) {

    case 139:
   tclass = 130;
   break;

    case 140:
    case 144:
    case 143:
   tclass = 152;
   break;

    case 135:
   tclass = 128;
   break;

    case 146:
    case 136:
   tclass = 149;
   break;

    case 137:
   tclass = 129;
   break;

    case 147:
    case 145:
    case 142:
    case 138:
   tclass = 151;
   break;

    case 141:
   tclass = 131;
   break;

    default:
   snprintf(ebuf, ebufsiz, "bad ATC=%#02x for BCOB-X",
       bearer->atc);
   return (-1);
  }
  break;

   case 133:
  snprintf(ebuf, ebufsiz, "unsupported bearer class tVP");
  return (-1);

   default:
  snprintf(ebuf, ebufsiz, "bad bearer class %#02x",
      bearer->bclass);
  return (-1);
 }




 ft = traffic->h.present & fmask;
 bt = traffic->h.present & bmask;
 be = traffic->h.present & UNI_TRAFFIC_BEST_P;
 ftag = (traffic->h.present & UNI_TRAFFIC_MOPT_P) && traffic->t.ftag;
 btag = (traffic->h.present & UNI_TRAFFIC_MOPT_P) && traffic->t.btag;
 switch (tclass) {

   case 130:
  if (be) { snprintf(ebuf, ebufsiz, "illegal BE for " "CBR.1"); return (-1); };
  if (ft != UNI_TRAFFIC_FPCR1_P)
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "CBR.1"); return (-1); } while (0);
  if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "CBR.1"); return (-1); };
  if (bt != UNI_TRAFFIC_BPCR1_P)
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "CBR.1"); return (-1); } while (0);
  if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "CBR.1"); return (-1); };
  *fclass = *bclass = 130;
  break;

   case 152:
  if (be) { snprintf(ebuf, ebufsiz, "illegal BE for " "CBR.2/3"); return (-1); };
  if (ft == UNI_TRAFFIC_FPCR0_P) {
   *fclass = UNI_TRAFFIC_CBR2;
   if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "CBR.2"); return (-1); };
  } else if (ft == fcbr3) {
   *fclass = UNI_TRAFFIC_CBR3;
   if (!ftag) {
    snprintf(ebuf, ebufsiz, "need forward tagging for CBR.3");
    return (-1);
   }
  } else
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "CBR.2/3"); return (-1); } while (0);
  if (bt == UNI_TRAFFIC_BPCR0_P) {
   *bclass = UNI_TRAFFIC_CBR2;
   if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "CBR.2"); return (-1); };
  } else if (bt == bcbr3) {
   *bclass = UNI_TRAFFIC_CBR3;
   if (!btag) {
    snprintf(ebuf, ebufsiz, "need backward tagging for CBR.3");
    return (-1);
   }
  } else
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "CBR.2/3"); return (-1); } while (0);
  break;

   case 128:
  if (be) { snprintf(ebuf, ebufsiz, "illegal BE for " "rtVBR.1"); return (-1); };
  if (ft != fvbr16)
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "rtVBR.1"); return (-1); } while (0);
  if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "rtVBR.1"); return (-1); };
  if (bt != bvbr16)
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "rtVBR.1"); return (-1); } while (0);
  if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "rtVBR.1"); return (-1); };
  *fclass = *bclass = 128;
  break;

   case 150:
  if (be) { snprintf(ebuf, ebufsiz, "illegal BE for " "rtVBR.2/3/6"); return (-1); };
  if (ft == fvbr23) {
   if (ftag)
    *fclass = UNI_TRAFFIC_rtVBR3;
   else
    *fclass = UNI_TRAFFIC_rtVBR2;
  } else if (ft == fvbr16) {
   *fclass = UNI_TRAFFIC_rtVBR6;
   if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "rtVBR.6"); return (-1); };
  } else
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "rtVBR.2/3/6"); return (-1); } while (0);
  if (bt == bvbr23) {
   if (btag)
    *bclass = UNI_TRAFFIC_rtVBR3;
   else
    *bclass = UNI_TRAFFIC_rtVBR2;
  } else if (bt == bvbr16) {
   *bclass = UNI_TRAFFIC_rtVBR6;
   if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "rtVBR.6"); return (-1); };
  } else
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "rtVBR.2/3/6"); return (-1); } while (0);
  break;

   case 149:
  if (be) { snprintf(ebuf, ebufsiz, "illegal BE for " "rtVBR.2-6"); return (-1); };
  if (ft == fvbr23) {
   if (ftag)
    *fclass = UNI_TRAFFIC_rtVBR3;
   else
    *fclass = UNI_TRAFFIC_rtVBR2;
  } else if (ft == fvbr4) {
   *fclass = UNI_TRAFFIC_rtVBR4;
  } else if (ft == UNI_TRAFFIC_FPCR1_P) {
   *fclass = UNI_TRAFFIC_rtVBR5;
   if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "rtVBR.5"); return (-1); };
  } else if (ft == fvbr16) {
   *fclass = UNI_TRAFFIC_rtVBR6;
   if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "rtVBR.6"); return (-1); };
  } else
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "rtVBR.2-6"); return (-1); } while (0);
  if (bt == bvbr23) {
   if (btag)
    *bclass = UNI_TRAFFIC_rtVBR3;
   else
    *bclass = UNI_TRAFFIC_rtVBR2;
  } else if (bt == bvbr4) {
   *bclass = UNI_TRAFFIC_rtVBR4;
  } else if (bt == UNI_TRAFFIC_BPCR1_P) {
   *bclass = UNI_TRAFFIC_rtVBR5;
   if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "rtVBR.5"); return (-1); };
  } else if (bt == bvbr16) {
   *bclass = UNI_TRAFFIC_rtVBR6;
   if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "rtVBR.6"); return (-1); };
  } else
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "rtVBR.2-6"); return (-1); } while (0);
  break;

   case 129:
  if (be) { snprintf(ebuf, ebufsiz, "illegal BE for " "nrtVBR.1"); return (-1); };
  if (ft != fvbr16)
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "nrtVBR.1"); return (-1); } while (0);
  if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "nrtVBR.1"); return (-1); };
  if (bt != bvbr16)
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "nrtVBR.1"); return (-1); } while (0);
  if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "nrtVBR.1"); return (-1); };
  *fclass = *bclass = 129;
  break;

   case 151:
  if (be) {
   if (ft != UNI_TRAFFIC_FPCR1_P)
    do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "UBR.1/2"); return (-1); } while (0);
   if (bt != UNI_TRAFFIC_BPCR1_P)
    do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "UBR.1/2"); return (-1); } while (0);
   if (ftag)
    *fclass = UNI_TRAFFIC_UBR2;
   else
    *fclass = UNI_TRAFFIC_UBR1;
   if (btag)
    *bclass = UNI_TRAFFIC_UBR2;
   else
    *bclass = UNI_TRAFFIC_UBR1;
   break;
  }
  if (ft == fvbr23) {
   if (ftag)
    *fclass = UNI_TRAFFIC_nrtVBR3;
   else
    *fclass = UNI_TRAFFIC_nrtVBR2;
  } else if (ft == fvbr4) {
   *fclass = UNI_TRAFFIC_nrtVBR4;
  } else if (ft == UNI_TRAFFIC_FPCR1_P) {
   *fclass = UNI_TRAFFIC_nrtVBR5;
   if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "nrtVBR.5"); return (-1); };
  } else if (ft == fvbr16) {
   *fclass = UNI_TRAFFIC_nrtVBR6;
   if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "nrtVBR.6"); return (-1); };
  } else
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "nrtVBR.2-6"); return (-1); } while (0);
  if (bt == bvbr23) {
   if (btag)
    *bclass = UNI_TRAFFIC_nrtVBR3;
   else
    *bclass = UNI_TRAFFIC_nrtVBR2;
  } else if (bt == bvbr4) {
   *bclass = UNI_TRAFFIC_nrtVBR4;
  } else if (bt == UNI_TRAFFIC_BPCR1_P) {
   *bclass = UNI_TRAFFIC_nrtVBR5;
   if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "nrtVBR.5"); return (-1); };
  } else if (bt == bvbr16) {
   *bclass = UNI_TRAFFIC_nrtVBR6;
   if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "nrtVBR.6"); return (-1); };
  } else
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "nrtVBR.2-6"); return (-1); } while (0);
  break;

   case 131:
  if (be) { snprintf(ebuf, ebufsiz, "illegal BE for " "ABR"); return (-1); };
  if (ft != UNI_TRAFFIC_FPCR1_P)
   do { snprintf(ebuf, ebufsiz, "bad forward CRs for " "ABR"); return (-1); } while (0);
  if (bt != UNI_TRAFFIC_BPCR1_P)
   do { snprintf(ebuf, ebufsiz, "bad backward CRs for " "ABR"); return (-1); } while (0);
  if (ftag) { snprintf(ebuf, ebufsiz, "illegal forward tag in " "ABR"); return (-1); };
  if (btag) { snprintf(ebuf, ebufsiz, "illegal backward tag in " "ABR"); return (-1); };
  *fclass = *bclass = 131;
  break;
 }

 return (0);
}
