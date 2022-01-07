
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; int * hctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int HMAC_CTX ;


 scalar_t__ COND (int ) ;
 size_t D_HMAC ;
 int HMAC_Final (int *,unsigned char*,int *) ;
 int HMAC_Init_ex (int *,int *,int ,int *,int *) ;
 int HMAC_Update (int *,unsigned char*,int ) ;
 int MD5_DIGEST_LENGTH ;
 int ** c ;
 int * lengths ;
 size_t testnum ;

__attribute__((used)) static int HMAC_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    HMAC_CTX *hctx = tempargs->hctx;
    unsigned char hmac[MD5_DIGEST_LENGTH];
    int count;

    for (count = 0; COND(c[D_HMAC][testnum]); count++) {
        HMAC_Init_ex(hctx, ((void*)0), 0, ((void*)0), ((void*)0));
        HMAC_Update(hctx, buf, lengths[testnum]);
        HMAC_Final(hctx, hmac, ((void*)0));
    }
    return count;
}
