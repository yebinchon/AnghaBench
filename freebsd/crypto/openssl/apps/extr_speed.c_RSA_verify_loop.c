
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; unsigned char* buf2; unsigned int siglen; int ** rsa_key; } ;
typedef TYPE_1__ loopargs_t ;
typedef int RSA ;


 int BIO_printf (int ,char*) ;
 scalar_t__ COND (int ) ;
 int ERR_print_errors (int ) ;
 int NID_md5_sha1 ;
 int RSA_verify (int ,unsigned char*,int,unsigned char*,unsigned int,int *) ;
 int bio_err ;
 int ** rsa_c ;
 size_t testnum ;

__attribute__((used)) static int RSA_verify_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    unsigned char *buf2 = tempargs->buf2;
    unsigned int rsa_num = tempargs->siglen;
    RSA **rsa_key = tempargs->rsa_key;
    int ret, count;
    for (count = 0; COND(rsa_c[testnum][1]); count++) {
        ret =
            RSA_verify(NID_md5_sha1, buf, 36, buf2, rsa_num, rsa_key[testnum]);
        if (ret <= 0) {
            BIO_printf(bio_err, "RSA verify failure\n");
            ERR_print_errors(bio_err);
            count = -1;
            break;
        }
    }
    return count;
}
