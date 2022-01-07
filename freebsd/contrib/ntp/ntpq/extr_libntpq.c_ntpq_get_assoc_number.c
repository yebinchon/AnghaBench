
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ associd_t ;
struct TYPE_2__ {scalar_t__ assid; } ;


 TYPE_1__* assoc_cache ;
 int numassoc ;

int ntpq_get_assoc_number ( associd_t associd )
{
 int i;

 for (i=0;i<numassoc;i++) {
  if (assoc_cache[i].assid == associd)
   return i;
 }

 return -1;

}
