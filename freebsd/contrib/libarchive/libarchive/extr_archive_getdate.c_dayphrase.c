
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdstate {int DayOrdinal; int DayNumber; TYPE_1__* tokenp; int HaveWeekDay; } ;
struct TYPE_2__ {char token; int value; } ;


 char tDAY ;
 char tUNUMBER ;

__attribute__((used)) static int
dayphrase(struct gdstate *gds)
{
 if (gds->tokenp[0].token == tDAY) {

  gds->HaveWeekDay++;
  gds->DayOrdinal = 1;
  gds->DayNumber = gds->tokenp[0].value;
  gds->tokenp += 1;
  if (gds->tokenp[0].token == ',')
   gds->tokenp += 1;
  return 1;
 }
 if (gds->tokenp[0].token == tUNUMBER
  && gds->tokenp[1].token == tDAY) {

  gds->HaveWeekDay++;
  gds->DayOrdinal = gds->tokenp[0].value;
  gds->DayNumber = gds->tokenp[1].value;
  gds->tokenp += 2;
  return 1;
 }
 return 0;
}
