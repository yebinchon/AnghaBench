
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int) ;
 int EVP_Digest (unsigned char*,int,unsigned char*,int *,int ,int *) ;
 int EVP_MAX_MD_SIZE ;
 int evp_md ;
 int* lengths ;
 int save_count ;
 size_t testnum ;

__attribute__((used)) static int EVP_Digest_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char md[EVP_MAX_MD_SIZE];
    int count;

    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];


    for (count = 0; COND(nb_iter); count++) {
        if (!EVP_Digest(buf, lengths[testnum], md, ((void*)0), evp_md, ((void*)0)))
            return -1;
    }
    return count;
}
