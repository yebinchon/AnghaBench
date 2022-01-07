
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iename_buf ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
iename(int elemid)
{
 static char iename_buf[64];
 switch (elemid) {
 case 144: return " FHPARMS";
 case 148: return " CFPARMS";
 case 131: return " TIM";
 case 142:return " IBSSPARMS";
 case 150: return " BSSLOAD";
 case 147:return " CHALLENGE";
 case 136: return " PWRCNSTR";
 case 137: return " PWRCAP";
 case 128: return " TPCREQ";
 case 129: return " TPCREP";
 case 132: return " SUPPCHAN";
 case 146: return " CSA";
 case 140: return " MEASREQ";
 case 141: return " MEASREP";
 case 135: return " QUIET";
 case 143: return " IBSSDFS";
 case 134:
     return " RESERVED_47";
 case 139:
     return " MOBILITY_DOMAIN";
 case 133:
     return " RRM_ENCAPS";
 case 138:
     return " OVERLAP_BSS";
 case 130: return " TPC";
 case 149: return " CCKM";
 case 145: return " EXTCAP";
 }
 snprintf(iename_buf, sizeof(iename_buf), " UNKNOWN_ELEMID_%d",
     elemid);
 return (const char *) iename_buf;
}
