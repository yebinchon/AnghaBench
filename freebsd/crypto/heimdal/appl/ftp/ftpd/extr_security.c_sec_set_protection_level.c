
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ data_prot ;
 scalar_t__ request_data_prot ;
 scalar_t__ sec_complete ;
 int sec_prot_internal (scalar_t__) ;

void
sec_set_protection_level(void)
{
    if(sec_complete && data_prot != request_data_prot)
 sec_prot_internal(request_data_prot);
}
