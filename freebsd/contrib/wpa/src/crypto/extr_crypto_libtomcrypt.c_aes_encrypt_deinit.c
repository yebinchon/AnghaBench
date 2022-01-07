
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symmetric_key ;


 int aes_done (int *) ;
 int os_free (int *) ;

void aes_encrypt_deinit(void *ctx)
{
 symmetric_key *skey = ctx;
 aes_done(skey);
 os_free(skey);
}
