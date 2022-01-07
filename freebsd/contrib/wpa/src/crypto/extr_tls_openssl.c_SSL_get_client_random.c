
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* s3; } ;
struct TYPE_4__ {int client_random; } ;
typedef TYPE_2__ SSL ;


 size_t SSL3_RANDOM_SIZE ;
 int os_memcpy (unsigned char*,int ,size_t) ;

__attribute__((used)) static size_t SSL_get_client_random(const SSL *ssl, unsigned char *out,
        size_t outlen)
{
 if (!ssl->s3 || outlen < SSL3_RANDOM_SIZE)
  return 0;
 os_memcpy(out, ssl->s3->client_random, SSL3_RANDOM_SIZE);
 return SSL3_RANDOM_SIZE;
}
