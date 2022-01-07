
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lruhash_sizefunc_type ;


 int dnsc_nonces_sizefunc ;
 int dnsc_shared_secrets_sizefunc ;
 int infra_sizefunc ;
 int ip_rate_sizefunc ;
 int key_entry_sizefunc ;
 int msg_cache_sizefunc ;
 int msgreply_sizefunc ;
 int rate_sizefunc ;
 int test_slabhash_sizefunc ;
 int ub_rrset_sizefunc ;

int
fptr_whitelist_hash_sizefunc(lruhash_sizefunc_type fptr)
{
 if(fptr == &msgreply_sizefunc) return 1;
 else if(fptr == &ub_rrset_sizefunc) return 1;
 else if(fptr == &infra_sizefunc) return 1;
 else if(fptr == &key_entry_sizefunc) return 1;
 else if(fptr == &rate_sizefunc) return 1;
 else if(fptr == &ip_rate_sizefunc) return 1;
 else if(fptr == &test_slabhash_sizefunc) return 1;







 return 0;
}
