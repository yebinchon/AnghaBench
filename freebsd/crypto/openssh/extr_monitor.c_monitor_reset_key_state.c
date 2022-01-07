
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MM_NOKEY ;
 int free (int *) ;
 int * hostbased_chost ;
 int * hostbased_cuser ;
 int * key_blob ;
 scalar_t__ key_bloblen ;
 int key_blobtype ;
 int * key_opts ;
 int sshauthopt_free (int *) ;

__attribute__((used)) static void
monitor_reset_key_state(void)
{

 free(key_blob);
 free(hostbased_cuser);
 free(hostbased_chost);
 sshauthopt_free(key_opts);
 key_blob = ((void*)0);
 key_bloblen = 0;
 key_blobtype = MM_NOKEY;
 key_opts = ((void*)0);
 hostbased_cuser = ((void*)0);
 hostbased_chost = ((void*)0);
}
