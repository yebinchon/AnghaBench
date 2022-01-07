
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; } ;
typedef TYPE_1__ loopargs_t ;


 scalar_t__ COND (int ) ;
 int DES_ENCRYPT ;
 int DES_ede3_cbc_encrypt (unsigned char*,unsigned char*,int ,int *,int *,int *,int *,int ) ;
 int DES_iv ;
 size_t D_EDE3_DES ;
 int ** c ;
 int * lengths ;
 int sch ;
 int sch2 ;
 int sch3 ;
 size_t testnum ;

__attribute__((used)) static int DES_ede3_cbc_encrypt_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    int count;
    for (count = 0; COND(c[D_EDE3_DES][testnum]); count++)
        DES_ede3_cbc_encrypt(buf, buf, lengths[testnum],
                             &sch, &sch2, &sch3, &DES_iv, DES_ENCRYPT);
    return count;
}
