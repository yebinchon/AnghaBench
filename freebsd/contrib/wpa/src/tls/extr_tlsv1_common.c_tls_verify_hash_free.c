
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_verify_hash {int * sha256_cert; int * sha256_server; int * sha256_client; int * sha1_cert; int * sha1_server; int * sha1_client; int * md5_cert; int * md5_server; int * md5_client; } ;


 int crypto_hash_finish (int *,int *,int *) ;

void tls_verify_hash_free(struct tls_verify_hash *verify)
{
 crypto_hash_finish(verify->md5_client, ((void*)0), ((void*)0));
 crypto_hash_finish(verify->md5_server, ((void*)0), ((void*)0));
 crypto_hash_finish(verify->md5_cert, ((void*)0), ((void*)0));
 crypto_hash_finish(verify->sha1_client, ((void*)0), ((void*)0));
 crypto_hash_finish(verify->sha1_server, ((void*)0), ((void*)0));
 crypto_hash_finish(verify->sha1_cert, ((void*)0), ((void*)0));
 verify->md5_client = ((void*)0);
 verify->md5_server = ((void*)0);
 verify->md5_cert = ((void*)0);
 verify->sha1_client = ((void*)0);
 verify->sha1_server = ((void*)0);
 verify->sha1_cert = ((void*)0);
}
