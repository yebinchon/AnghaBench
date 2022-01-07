
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* session; TYPE_1__* s3; } ;
struct TYPE_7__ {int master_key_length; int master_key; } ;
struct TYPE_6__ {int client_random; int server_random; } ;
typedef TYPE_3__ SSL ;


 int SSL3_RANDOM_SIZE ;
 int TLS_MD_KEY_EXPANSION_CONST ;
 int TLS_MD_KEY_EXPANSION_CONST_SIZE ;
 int tls1_PRF (TYPE_3__*,int ,int ,int ,int ,int ,int ,int *,int ,int *,int ,int ,int ,unsigned char*,size_t,int) ;

__attribute__((used)) static int tls1_generate_key_block(SSL *s, unsigned char *km, size_t num)
{
    int ret;


    ret = tls1_PRF(s,
                   TLS_MD_KEY_EXPANSION_CONST,
                   TLS_MD_KEY_EXPANSION_CONST_SIZE, s->s3->server_random,
                   SSL3_RANDOM_SIZE, s->s3->client_random, SSL3_RANDOM_SIZE,
                   ((void*)0), 0, ((void*)0), 0, s->session->master_key,
                   s->session->master_key_length, km, num, 1);

    return ret;
}
