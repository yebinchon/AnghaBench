
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int ) ;
 size_t D_MD4 ;
 int EVP_Digest (unsigned char*,size_t,unsigned char*,int *,int ,int *) ;
 int EVP_md4 () ;
 int MD4_DIGEST_LENGTH ;
 int ** c ;
 scalar_t__* lengths ;
 size_t testnum ;

__attribute__((used)) static int EVP_Digest_MD4_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char md4[MD4_DIGEST_LENGTH];
    int count;

    for (count = 0; COND(c[D_MD4][testnum]); count++) {
        if (!EVP_Digest(buf, (size_t)lengths[testnum], md4, ((void*)0), EVP_md4(),
                        ((void*)0)))
            return -1;
    }
    return count;
}
