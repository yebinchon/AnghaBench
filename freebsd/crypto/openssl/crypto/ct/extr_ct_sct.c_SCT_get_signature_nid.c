
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ version; scalar_t__ hash_alg; int sig_alg; } ;
typedef TYPE_1__ SCT ;


 int NID_ecdsa_with_SHA256 ;
 int NID_sha256WithRSAEncryption ;
 int NID_undef ;
 scalar_t__ SCT_VERSION_V1 ;
 scalar_t__ TLSEXT_hash_sha256 ;



int SCT_get_signature_nid(const SCT *sct)
{
    if (sct->version == SCT_VERSION_V1) {
        if (sct->hash_alg == TLSEXT_hash_sha256) {
            switch (sct->sig_alg) {
            case 129:
                return NID_ecdsa_with_SHA256;
            case 128:
                return NID_sha256WithRSAEncryption;
            default:
                return NID_undef;
            }
        }
    }
    return NID_undef;
}
