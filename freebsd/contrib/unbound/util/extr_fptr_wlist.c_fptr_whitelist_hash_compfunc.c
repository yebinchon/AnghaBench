
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lruhash_compfunc_type ;


 int dnsc_nonces_compfunc ;
 int dnsc_shared_secrets_compfunc ;
 int infra_compfunc ;
 int ip_rate_compfunc ;
 int key_entry_compfunc ;
 int query_info_compare ;
 int rate_compfunc ;
 int test_slabhash_compfunc ;
 int ub_rrset_compare ;

int
fptr_whitelist_hash_compfunc(lruhash_compfunc_type fptr)
{
 if(fptr == &query_info_compare) return 1;
 else if(fptr == &ub_rrset_compare) return 1;
 else if(fptr == &infra_compfunc) return 1;
 else if(fptr == &key_entry_compfunc) return 1;
 else if(fptr == &rate_compfunc) return 1;
 else if(fptr == &ip_rate_compfunc) return 1;
 else if(fptr == &test_slabhash_compfunc) return 1;




 return 0;
}
