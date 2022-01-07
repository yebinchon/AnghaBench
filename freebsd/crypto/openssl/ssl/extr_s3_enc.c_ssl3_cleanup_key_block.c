
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* s3; } ;
struct TYPE_5__ {scalar_t__ key_block_length; int * key_block; } ;
struct TYPE_6__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;


 int OPENSSL_clear_free (int *,scalar_t__) ;

void ssl3_cleanup_key_block(SSL *s)
{
    OPENSSL_clear_free(s->s3->tmp.key_block, s->s3->tmp.key_block_length);
    s->s3->tmp.key_block = ((void*)0);
    s->s3->tmp.key_block_length = 0;
}
