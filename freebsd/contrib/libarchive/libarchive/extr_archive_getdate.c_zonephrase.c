
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdstate {TYPE_1__* tokenp; void* DSTmode; int Timezone; int HaveZone; } ;
struct TYPE_2__ {scalar_t__ token; int value; } ;


 void* DSToff ;
 void* DSTon ;
 scalar_t__ tDAYZONE ;
 scalar_t__ tDST ;
 scalar_t__ tZONE ;

__attribute__((used)) static int
zonephrase(struct gdstate *gds)
{
 if (gds->tokenp[0].token == tZONE
     && gds->tokenp[1].token == tDST) {
  gds->HaveZone++;
  gds->Timezone = gds->tokenp[0].value;
  gds->DSTmode = DSTon;
  gds->tokenp += 1;
  return 1;
 }

 if (gds->tokenp[0].token == tZONE) {
  gds->HaveZone++;
  gds->Timezone = gds->tokenp[0].value;
  gds->DSTmode = DSToff;
  gds->tokenp += 1;
  return 1;
 }

 if (gds->tokenp[0].token == tDAYZONE) {
  gds->HaveZone++;
  gds->Timezone = gds->tokenp[0].value;
  gds->DSTmode = DSTon;
  gds->tokenp += 1;
  return 1;
 }
 return 0;
}
