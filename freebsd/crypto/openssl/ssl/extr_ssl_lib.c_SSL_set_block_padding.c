
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t block_padding; } ;
typedef TYPE_1__ SSL ;


 size_t SSL3_RT_MAX_PLAIN_LENGTH ;

int SSL_set_block_padding(SSL *ssl, size_t block_size)
{

    if (block_size == 1)
        ssl->block_padding = 0;
    else if (block_size <= SSL3_RT_MAX_PLAIN_LENGTH)
        ssl->block_padding = block_size;
    else
        return 0;
    return 1;
}
