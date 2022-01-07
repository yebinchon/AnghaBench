
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ version; int sig_alg; int hash_alg; } ;
typedef TYPE_1__ SCT ;


 int CT_F_O2I_SCT_SIGNATURE ;
 int CT_R_SCT_INVALID_SIGNATURE ;
 int CT_R_UNSUPPORTED_VERSION ;
 int CTerr (int ,int ) ;
 scalar_t__ NID_undef ;
 scalar_t__ SCT_VERSION_V1 ;
 scalar_t__ SCT_get_signature_nid (TYPE_1__*) ;
 int SCT_set1_signature (TYPE_1__*,unsigned char const*,size_t) ;
 int n2s (unsigned char const*,size_t) ;

int o2i_SCT_signature(SCT *sct, const unsigned char **in, size_t len)
{
    size_t siglen;
    size_t len_remaining = len;
    const unsigned char *p;

    if (sct->version != SCT_VERSION_V1) {
        CTerr(CT_F_O2I_SCT_SIGNATURE, CT_R_UNSUPPORTED_VERSION);
        return -1;
    }







    if (len <= 4) {
        CTerr(CT_F_O2I_SCT_SIGNATURE, CT_R_SCT_INVALID_SIGNATURE);
        return -1;
    }

    p = *in;

    sct->hash_alg = *p++;
    sct->sig_alg = *p++;
    if (SCT_get_signature_nid(sct) == NID_undef) {
        CTerr(CT_F_O2I_SCT_SIGNATURE, CT_R_SCT_INVALID_SIGNATURE);
        return -1;
    }

    n2s(p, siglen);
    len_remaining -= (p - *in);
    if (siglen > len_remaining) {
        CTerr(CT_F_O2I_SCT_SIGNATURE, CT_R_SCT_INVALID_SIGNATURE);
        return -1;
    }

    if (SCT_set1_signature(sct, p, siglen) != 1)
        return -1;
    len_remaining -= siglen;
    *in = p + siglen;

    return len - len_remaining;
}
