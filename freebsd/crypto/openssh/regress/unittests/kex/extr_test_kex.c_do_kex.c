
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_DSA ;
 int KEY_ECDSA ;
 int KEY_ED25519 ;
 int KEY_RSA ;
 int do_kex_with_key (char*,int ,int) ;

__attribute__((used)) static void
do_kex(char *kex)
{
 do_kex_with_key(kex, KEY_RSA, 2048);
 do_kex_with_key(kex, KEY_DSA, 1024);



 do_kex_with_key(kex, KEY_ED25519, 256);
}
