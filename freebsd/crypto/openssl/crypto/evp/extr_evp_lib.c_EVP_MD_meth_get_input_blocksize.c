
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int block_size; } ;
typedef TYPE_1__ EVP_MD ;



int EVP_MD_meth_get_input_blocksize(const EVP_MD *md)
{
    return md->block_size;
}
