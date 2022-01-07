
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* validation_status; int sig_alg; void* hash_alg; } ;
typedef TYPE_1__ SCT ;


 int CT_F_SCT_SET_SIGNATURE_NID ;
 int CT_R_UNRECOGNIZED_SIGNATURE_NID ;
 int CTerr (int ,int ) ;


 void* SCT_VALIDATION_STATUS_NOT_SET ;
 void* TLSEXT_hash_sha256 ;
 int TLSEXT_signature_ecdsa ;
 int TLSEXT_signature_rsa ;

int SCT_set_signature_nid(SCT *sct, int nid)
{
    switch (nid) {
    case 128:
        sct->hash_alg = TLSEXT_hash_sha256;
        sct->sig_alg = TLSEXT_signature_rsa;
        sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;
        return 1;
    case 129:
        sct->hash_alg = TLSEXT_hash_sha256;
        sct->sig_alg = TLSEXT_signature_ecdsa;
        sct->validation_status = SCT_VALIDATION_STATUS_NOT_SET;
        return 1;
    default:
        CTerr(CT_F_SCT_SET_SIGNATURE_NID, CT_R_UNRECOGNIZED_SIGNATURE_NID);
        return 0;
    }
}
