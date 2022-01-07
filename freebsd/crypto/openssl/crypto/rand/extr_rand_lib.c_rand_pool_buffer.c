
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* buffer; } ;
typedef TYPE_1__ RAND_POOL ;



const unsigned char *rand_pool_buffer(RAND_POOL *pool)
{
    return pool->buffer;
}
