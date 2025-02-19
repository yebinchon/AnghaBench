
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ex_flags; scalar_t__ akid; } ;
typedef TYPE_1__ X509 ;


 int EXFLAG_PROXY ;
 int KU_DIGITAL_SIGNATURE ;
 int KU_KEY_CERT_SIGN ;
 scalar_t__ X509_NAME_cmp (int ,int ) ;
 int X509_V_ERR_KEYUSAGE_NO_CERTSIGN ;
 int X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE ;
 int X509_V_ERR_SUBJECT_ISSUER_MISMATCH ;
 int X509_V_OK ;
 int X509_check_akid (TYPE_1__*,scalar_t__) ;
 int X509_get_issuer_name (TYPE_1__*) ;
 int X509_get_subject_name (TYPE_1__*) ;
 scalar_t__ ku_reject (TYPE_1__*,int ) ;
 int x509v3_cache_extensions (TYPE_1__*) ;

int X509_check_issued(X509 *issuer, X509 *subject)
{
    if (X509_NAME_cmp(X509_get_subject_name(issuer),
                      X509_get_issuer_name(subject)))
        return X509_V_ERR_SUBJECT_ISSUER_MISMATCH;

    x509v3_cache_extensions(issuer);
    x509v3_cache_extensions(subject);

    if (subject->akid) {
        int ret = X509_check_akid(issuer, subject->akid);
        if (ret != X509_V_OK)
            return ret;
    }

    if (subject->ex_flags & EXFLAG_PROXY) {
        if (ku_reject(issuer, KU_DIGITAL_SIGNATURE))
            return X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE;
    } else if (ku_reject(issuer, KU_KEY_CERT_SIGN))
        return X509_V_ERR_KEYUSAGE_NO_CERTSIGN;
    return X509_V_OK;
}
