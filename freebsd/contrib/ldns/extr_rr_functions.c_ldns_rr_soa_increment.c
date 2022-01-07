
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int ldns_rr_soa_increment_func_data (int *,int ,int *) ;
 int ldns_soa_serial_increment ;

void
ldns_rr_soa_increment(ldns_rr *soa)
{
 ldns_rr_soa_increment_func_data(soa, ldns_soa_serial_increment, ((void*)0));
}
