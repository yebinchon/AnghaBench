
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;


 scalar_t__ ldns_time (int *) ;

uint32_t ldns_soa_serial_unixtime(uint32_t s, void *data)
{
 int32_t new_s = data ? (int32_t) (intptr_t) data
        : (int32_t) ldns_time(((void*)0));
 return new_s - ((int32_t) s) <= 0 ? s+1 : ((uint32_t) new_s);
}
