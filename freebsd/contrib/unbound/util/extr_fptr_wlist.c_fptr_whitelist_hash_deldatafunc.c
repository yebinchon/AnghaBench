
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * lruhash_deldatafunc_type ;


 int dnsc_nonces_deldatafunc ;
 int dnsc_shared_secrets_deldatafunc ;
 int infra_deldatafunc ;
 int key_entry_deldatafunc ;
 int rate_deldatafunc ;
 int reply_info_delete ;
 int rrset_data_delete ;
 int subnet_data_delete ;
 int test_slabhash_deldata ;

int
fptr_whitelist_hash_deldatafunc(lruhash_deldatafunc_type fptr)
{
 if(fptr == &reply_info_delete) return 1;
 else if(fptr == &rrset_data_delete) return 1;
 else if(fptr == &infra_deldatafunc) return 1;
 else if(fptr == &key_entry_deldatafunc) return 1;
 else if(fptr == &rate_deldatafunc) return 1;
 else if(fptr == &test_slabhash_deldata) return 1;







 return 0;
}
