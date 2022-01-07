
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int linktype; int dlt; } ;


 int DLT_PFSYNC ;
 int DLT_PKTAP ;
 int LINKTYPE_MATCHING_MAX ;
 int LINKTYPE_MATCHING_MIN ;
 int LINKTYPE_PFSYNC ;
 int LINKTYPE_PKTAP ;
 TYPE_1__* map ;

int
linktype_to_dlt(int linktype)
{
 int i;







 if (linktype == LINKTYPE_PFSYNC)
  return (DLT_PFSYNC);
 if (linktype == LINKTYPE_PKTAP)
  return (DLT_PKTAP);





 if (linktype >= LINKTYPE_MATCHING_MIN &&
     linktype <= LINKTYPE_MATCHING_MAX)
  return (linktype);




 for (i = 0; map[i].linktype != -1; i++) {
  if (map[i].linktype == linktype)
   return (map[i].dlt);
 }






 return linktype;
}
