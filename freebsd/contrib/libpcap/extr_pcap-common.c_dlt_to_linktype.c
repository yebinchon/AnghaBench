
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dlt; int linktype; } ;


 int DLT_MATCHING_MAX ;
 int DLT_MATCHING_MIN ;
 int DLT_PFSYNC ;
 int DLT_PKTAP ;
 int LINKTYPE_PFSYNC ;
 int LINKTYPE_PKTAP ;
 TYPE_1__* map ;

int
dlt_to_linktype(int dlt)
{
 int i;
 if (dlt == DLT_PFSYNC)
  return (LINKTYPE_PFSYNC);
 if (dlt == DLT_PKTAP)
  return (LINKTYPE_PKTAP);





 if (dlt >= DLT_MATCHING_MIN && dlt <= DLT_MATCHING_MAX)
  return (dlt);




 for (i = 0; map[i].dlt != -1; i++) {
  if (map[i].dlt == dlt)
   return (map[i].linktype);
 }






 return (-1);
}
