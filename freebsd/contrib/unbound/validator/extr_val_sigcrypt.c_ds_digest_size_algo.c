
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;


 size_t ds_digest_size_supported (int ) ;
 int ds_get_digest_algo (struct ub_packed_rrset_key*,size_t) ;

__attribute__((used)) static size_t
ds_digest_size_algo(struct ub_packed_rrset_key* k, size_t idx)
{
 return ds_digest_size_supported(ds_get_digest_algo(k, idx));
}
