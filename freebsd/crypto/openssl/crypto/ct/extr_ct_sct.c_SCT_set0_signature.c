
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* sig; size_t sig_len; int validation_status; } ;
typedef TYPE_1__ SCT ;


 int OPENSSL_free (unsigned char*) ;
 int SCT_VALIDATION_STATUS_NOT_SET ;

void SCT_set0_signature(SCT *sct, unsigned char *sig, size_t sig_len)
{
    OPENSSL_free(sct->sig);
    sct->sig = sig;
    sct->sig_len = sig_len;
    sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;
}
