
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdstate {int Hour; int Minutes; int Seconds; int Timezone; TYPE_1__* tokenp; void* DSTmode; int HaveZone; int HaveTime; } ;
struct TYPE_2__ {char token; int value; } ;


 void* DSToff ;
 int HOUR ;
 int MINUTE ;
 char tAMPM ;
 int tPM ;
 char tUNUMBER ;

__attribute__((used)) static int
timephrase(struct gdstate *gds)
{
 if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == ':'
     && gds->tokenp[2].token == tUNUMBER
     && gds->tokenp[3].token == ':'
     && gds->tokenp[4].token == tUNUMBER) {

  ++gds->HaveTime;
  gds->Hour = gds->tokenp[0].value;
  gds->Minutes = gds->tokenp[2].value;
  gds->Seconds = gds->tokenp[4].value;
  gds->tokenp += 5;
 }
 else if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == ':'
     && gds->tokenp[2].token == tUNUMBER) {

  ++gds->HaveTime;
  gds->Hour = gds->tokenp[0].value;
  gds->Minutes = gds->tokenp[2].value;
  gds->Seconds = 0;
  gds->tokenp += 3;
 }
 else if (gds->tokenp[0].token == tUNUMBER
     && gds->tokenp[1].token == tAMPM) {

  ++gds->HaveTime;
  gds->Hour = gds->tokenp[0].value;
  gds->Minutes = gds->Seconds = 0;

  gds->tokenp += 1;
 } else {

  return 0;
 }

 if (gds->tokenp[0].token == tAMPM) {

  if (gds->Hour == 12)
   gds->Hour = 0;
  if (gds->tokenp[0].value == tPM)
   gds->Hour += 12;
  gds->tokenp += 1;
 }
 if (gds->tokenp[0].token == '+'
     && gds->tokenp[1].token == tUNUMBER) {

  gds->HaveZone++;
  gds->DSTmode = DSToff;
  gds->Timezone = - ((gds->tokenp[1].value / 100) * HOUR
      + (gds->tokenp[1].value % 100) * MINUTE);
  gds->tokenp += 2;
 }
 if (gds->tokenp[0].token == '-'
     && gds->tokenp[1].token == tUNUMBER) {

  gds->HaveZone++;
  gds->DSTmode = DSToff;
  gds->Timezone = + ((gds->tokenp[1].value / 100) * HOUR
      + (gds->tokenp[1].value % 100) * MINUTE);
  gds->tokenp += 2;
 }
 return 1;
}
