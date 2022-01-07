
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



uint32_t ldns_soa_serial_increment_by(uint32_t s, void *data)
{
 return s + (intptr_t) data;
}
