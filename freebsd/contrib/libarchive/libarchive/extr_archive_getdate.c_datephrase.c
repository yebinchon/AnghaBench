
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdstate {int Year; int Month; int Day; TYPE_1__* tokenp; int HaveDay; int HaveMonth; int HaveYear; } ;
struct TYPE_2__ {char token; int value; } ;


 char tMONTH ;
 char tUNUMBER ;

__attribute__((used)) static int
datephrase(struct gdstate *gds)
{
 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == '/'
     && gds->tokenp[2].token == tUNUMBER
     && gds->tokenp[3].token == '/'
     && gds->tokenp[4].token == tUNUMBER) {
  gds->HaveYear++;
  gds->HaveMonth++;
  gds->HaveDay++;
  if (gds->tokenp[0].value >= 13) {

   gds->Year = gds->tokenp[0].value;
   gds->Month = gds->tokenp[2].value;
   gds->Day = gds->tokenp[4].value;
  } else if ((gds->tokenp[4].value >= 13)
      || (gds->tokenp[2].value >= 13)) {


   gds->Month = gds->tokenp[0].value;
   gds->Day = gds->tokenp[2].value;
   gds->Year = gds->tokenp[4].value;
  } else {

   gds->Month = gds->tokenp[0].value;
   gds->Day = gds->tokenp[2].value;
   gds->Year = gds->tokenp[4].value;
  }
  gds->tokenp += 5;
  return 1;
 }

 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == '/'
     && gds->tokenp[2].token == tUNUMBER) {

  gds->HaveMonth++;
  gds->HaveDay++;
  gds->Month = gds->tokenp[0].value;
  gds->Day = gds->tokenp[2].value;
  gds->tokenp += 3;
  return 1;
 }

 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == '-'
     && gds->tokenp[2].token == tUNUMBER
     && gds->tokenp[3].token == '-'
     && gds->tokenp[4].token == tUNUMBER) {

  gds->HaveYear++;
  gds->HaveMonth++;
  gds->HaveDay++;
  gds->Year = gds->tokenp[0].value;
  gds->Month = gds->tokenp[2].value;
  gds->Day = gds->tokenp[4].value;
  gds->tokenp += 5;
  return 1;
 }

 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == '-'
     && gds->tokenp[2].token == tMONTH
     && gds->tokenp[3].token == '-'
     && gds->tokenp[4].token == tUNUMBER) {
  gds->HaveYear++;
  gds->HaveMonth++;
  gds->HaveDay++;
  if (gds->tokenp[0].value > 31) {

   gds->Year = gds->tokenp[0].value;
   gds->Month = gds->tokenp[2].value;
   gds->Day = gds->tokenp[4].value;
  } else {

   gds->Day = gds->tokenp[0].value;
   gds->Month = gds->tokenp[2].value;
   gds->Year = gds->tokenp[4].value;
  }
  gds->tokenp += 5;
  return 1;
 }

 if (gds->tokenp[0].token == tMONTH
     && gds->tokenp[1].token == tUNUMBER
     && gds->tokenp[2].token == ','
     && gds->tokenp[3].token == tUNUMBER) {

  gds->HaveYear++;
  gds->HaveMonth++;
  gds->HaveDay++;
  gds->Month = gds->tokenp[0].value;
  gds->Day = gds->tokenp[1].value;
  gds->Year = gds->tokenp[3].value;
  gds->tokenp += 4;
  return 1;
 }

 if (gds->tokenp[0].token == tMONTH
     && gds->tokenp[1].token == tUNUMBER) {

  gds->HaveMonth++;
  gds->HaveDay++;
  gds->Month = gds->tokenp[0].value;
  gds->Day = gds->tokenp[1].value;
  gds->tokenp += 2;
  return 1;
 }

 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == tMONTH
     && gds->tokenp[2].token == tUNUMBER) {

  gds->HaveYear++;
  gds->HaveMonth++;
  gds->HaveDay++;
  gds->Day = gds->tokenp[0].value;
  gds->Month = gds->tokenp[1].value;
  gds->Year = gds->tokenp[2].value;
  gds->tokenp += 3;
  return 1;
 }

 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == tMONTH) {

  gds->HaveMonth++;
  gds->HaveDay++;
  gds->Day = gds->tokenp[0].value;
  gds->Month = gds->tokenp[1].value;
  gds->tokenp += 2;
  return 1;
 }

 return 0;
}
