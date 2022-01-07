
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_size; } ;
typedef TYPE_1__ EVP_MD ;


 int EVP_F_EVP_MD_SIZE ;
 int EVP_R_MESSAGE_DIGEST_IS_NULL ;
 int EVPerr (int ,int ) ;

int EVP_MD_size(const EVP_MD *md)
{
    if (!md) {
        EVPerr(EVP_F_EVP_MD_SIZE, EVP_R_MESSAGE_DIGEST_IS_NULL);
        return -1;
    }
    return md->md_size;
}
