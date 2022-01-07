
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; unsigned char* buf2; size_t sigsize; int ** eddsa_ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int EVP_MD_CTX ;


 int BIO_printf (int ,char*) ;
 scalar_t__ COND (int ) ;
 int ERR_print_errors (int ) ;
 int EVP_DigestSign (int *,unsigned char*,size_t*,unsigned char*,int) ;
 int bio_err ;
 int ** eddsa_c ;
 size_t testnum ;

__attribute__((used)) static int EdDSA_sign_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_MD_CTX **edctx = tempargs->eddsa_ctx;
    unsigned char *eddsasig = tempargs->buf2;
    size_t *eddsasigsize = &tempargs->sigsize;
    int ret, count;

    for (count = 0; COND(eddsa_c[testnum][0]); count++) {
        ret = EVP_DigestSign(edctx[testnum], eddsasig, eddsasigsize, buf, 20);
        if (ret == 0) {
            BIO_printf(bio_err, "EdDSA sign failure\n");
            ERR_print_errors(bio_err);
            count = -1;
            break;
        }
    }
    return count;
}
