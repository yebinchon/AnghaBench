
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; scalar_t__ name; } ;
typedef TYPE_1__ ldns_lookup_table ;


 TYPE_1__* ldns_signing_algorithms ;

int ldns_key_algo_supported(int algo)
{
 ldns_lookup_table *lt = ldns_signing_algorithms;
 while(lt->name) {
  if(lt->id == algo)
   return 1;
  lt++;
 }
 return 0;
}
