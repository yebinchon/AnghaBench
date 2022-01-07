
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t sig_len; int * sig; int validation_status; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_SET1_SIGNATURE ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_memdup (unsigned char const*,size_t) ;
 int SCT_VALIDATION_STATUS_NOT_SET ;

int SCT_set1_signature(SCT *sct, const unsigned char *sig, size_t sig_len)
{
    OPENSSL_free(sct->sig);
    sct->sig = ((void*)0);
    sct->sig_len = 0;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;

    if (sig != ((void*)0) && sig_len > 0) {
        sct->sig = OPENSSL_memdup(sig, sig_len);
        if (sct->sig == ((void*)0)) {
            CTerr(CT_F_SCT_SET1_SIGNATURE, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        sct->sig_len = sig_len;
    }
    return 1;
}
