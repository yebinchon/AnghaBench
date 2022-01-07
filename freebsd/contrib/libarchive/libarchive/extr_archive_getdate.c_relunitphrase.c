
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdstate {int RelSeconds; int RelMonth; TYPE_1__* tokenp; int HaveRel; } ;
struct TYPE_2__ {char token; int value; } ;


 char tMONTH_UNIT ;
 char tSEC_UNIT ;
 char tUNUMBER ;

__attribute__((used)) static int
relunitphrase(struct gdstate *gds)
{
 if (gds->tokenp[0].token == '-'
     && gds->tokenp[1].token == tUNUMBER
     && gds->tokenp[2].token == tSEC_UNIT) {

  gds->HaveRel++;
  gds->RelSeconds -= gds->tokenp[1].value * gds->tokenp[2].value;
  gds->tokenp += 3;
  return 1;
 }
 if (gds->tokenp[0].token == '+'
     && gds->tokenp[1].token == tUNUMBER
     && gds->tokenp[2].token == tSEC_UNIT) {

  gds->HaveRel++;
  gds->RelSeconds += gds->tokenp[1].value * gds->tokenp[2].value;
  gds->tokenp += 3;
  return 1;
 }
 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == tSEC_UNIT) {

  gds->HaveRel++;
  gds->RelSeconds += gds->tokenp[0].value * gds->tokenp[1].value;
  gds->tokenp += 2;
  return 1;
 }
 if (gds->tokenp[0].token == '-'
     && gds->tokenp[1].token == tUNUMBER
     && gds->tokenp[2].token == tMONTH_UNIT) {

  gds->HaveRel++;
  gds->RelMonth -= gds->tokenp[1].value * gds->tokenp[2].value;
  gds->tokenp += 3;
  return 1;
 }
 if (gds->tokenp[0].token == '+'
     && gds->tokenp[1].token == tUNUMBER
     && gds->tokenp[2].token == tMONTH_UNIT) {

  gds->HaveRel++;
  gds->RelMonth += gds->tokenp[1].value * gds->tokenp[2].value;
  gds->tokenp += 3;
  return 1;
 }
 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == tMONTH_UNIT) {

  gds->HaveRel++;
  gds->RelMonth += gds->tokenp[0].value * gds->tokenp[1].value;
  gds->tokenp += 2;
  return 1;
 }
 if (gds->tokenp[0].token == tSEC_UNIT) {

  gds->HaveRel++;
  gds->RelSeconds += gds->tokenp[0].value;
  gds->tokenp += 1;
  return 1;
 }
 if (gds->tokenp[0].token == tMONTH_UNIT) {

  gds->HaveRel++;
  gds->RelMonth += gds->tokenp[0].value;
  gds->tokenp += 1;
  return 1;
 }
 return 0;
}
