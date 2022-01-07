
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;


 int dnskey_algo_id_is_supported (int ) ;
 int ds_get_key_algo (struct ub_packed_rrset_key*,size_t) ;

int
ds_key_algo_is_supported(struct ub_packed_rrset_key* ds_rrset,
 size_t ds_idx)
{
 return dnskey_algo_id_is_supported(ds_get_key_algo(ds_rrset, ds_idx));
}
