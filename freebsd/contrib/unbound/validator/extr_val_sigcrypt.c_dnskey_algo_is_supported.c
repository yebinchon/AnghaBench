
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;


 int dnskey_algo_id_is_supported (int ) ;
 int dnskey_get_algo (struct ub_packed_rrset_key*,size_t) ;

int dnskey_algo_is_supported(struct ub_packed_rrset_key* dnskey_rrset,
        size_t dnskey_idx)
{
 return dnskey_algo_id_is_supported(dnskey_get_algo(dnskey_rrset,
  dnskey_idx));
}
