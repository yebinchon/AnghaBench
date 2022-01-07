
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; unsigned char* buf2; } ;
typedef TYPE_1__ loopargs_t ;


 int AES_ENCRYPT ;
 int AES_ige_encrypt (unsigned char*,unsigned char*,size_t,int *,int ,int ) ;
 scalar_t__ COND (int ) ;
 size_t D_IGE_256_AES ;
 int aes_ks3 ;
 int ** c ;
 int iv ;
 scalar_t__* lengths ;
 size_t testnum ;

__attribute__((used)) static int AES_ige_256_encrypt_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char *buf2 = tempargs->buf2;
    int count;
    for (count = 0; COND(c[D_IGE_256_AES][testnum]); count++)
        AES_ige_encrypt(buf, buf2,
                        (size_t)lengths[testnum], &aes_ks3, iv, AES_ENCRYPT);
    return count;
}
