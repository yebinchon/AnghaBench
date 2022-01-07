
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;


 scalar_t__ ds_digest_size_algo (struct ub_packed_rrset_key*,size_t) ;

int
ds_digest_algo_is_supported(struct ub_packed_rrset_key* ds_rrset,
 size_t ds_idx)
{
 return (ds_digest_size_algo(ds_rrset, ds_idx) != 0);
}
