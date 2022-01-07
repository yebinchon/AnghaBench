
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lruhash_delkeyfunc_type ;


 int dnsc_nonces_delkeyfunc ;
 int dnsc_shared_secrets_delkeyfunc ;
 int infra_delkeyfunc ;
 int ip_rate_delkeyfunc ;
 int key_entry_delkeyfunc ;
 int query_entry_delete ;
 int rate_delkeyfunc ;
 int test_slabhash_delkey ;
 int ub_rrset_key_delete ;

int
fptr_whitelist_hash_delkeyfunc(lruhash_delkeyfunc_type fptr)
{
 if(fptr == &query_entry_delete) return 1;
 else if(fptr == &ub_rrset_key_delete) return 1;
 else if(fptr == &infra_delkeyfunc) return 1;
 else if(fptr == &key_entry_delkeyfunc) return 1;
 else if(fptr == &rate_delkeyfunc) return 1;
 else if(fptr == &ip_rate_delkeyfunc) return 1;
 else if(fptr == &test_slabhash_delkey) return 1;




 return 0;
}
