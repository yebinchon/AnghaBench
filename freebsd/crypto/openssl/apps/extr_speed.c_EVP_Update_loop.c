
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; int * ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int EVP_CIPHER_CTX ;


 scalar_t__ COND (int) ;
 int EVP_CipherInit_ex (int *,int *,int *,int *,int ,int) ;
 int EVP_DecryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_DecryptUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 int EVP_EncryptFinal_ex (int *,unsigned char*,int*) ;
 int EVP_EncryptUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 scalar_t__ decrypt ;
 int iv ;
 int* lengths ;
 int save_count ;
 size_t testnum ;

__attribute__((used)) static int EVP_Update_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EVP_CIPHER_CTX *ctx = tempargs->ctx;
    int outl, count, rc;

    int nb_iter = save_count * 4 * lengths[0] / lengths[testnum];

    if (decrypt) {
        for (count = 0; COND(nb_iter); count++) {
            rc = EVP_DecryptUpdate(ctx, buf, &outl, buf, lengths[testnum]);
            if (rc != 1) {

                EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), iv, -1);
            }
        }
    } else {
        for (count = 0; COND(nb_iter); count++) {
            rc = EVP_EncryptUpdate(ctx, buf, &outl, buf, lengths[testnum]);
            if (rc != 1) {

                EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), ((void*)0), iv, -1);
            }
        }
    }
    if (decrypt)
        EVP_DecryptFinal_ex(ctx, buf, &outl);
    else
        EVP_EncryptFinal_ex(ctx, buf, &outl);
    return count;
}
