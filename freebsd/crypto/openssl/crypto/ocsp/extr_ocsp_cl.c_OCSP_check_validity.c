
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int ASN1_GENERALIZEDTIME ;


 int ASN1_GENERALIZEDTIME_check (int *) ;
 scalar_t__ ASN1_STRING_cmp (int *,int *) ;
 int OCSP_F_OCSP_CHECK_VALIDITY ;
 int OCSP_R_ERROR_IN_NEXTUPDATE_FIELD ;
 int OCSP_R_ERROR_IN_THISUPDATE_FIELD ;
 int OCSP_R_NEXTUPDATE_BEFORE_THISUPDATE ;
 int OCSP_R_STATUS_EXPIRED ;
 int OCSP_R_STATUS_NOT_YET_VALID ;
 int OCSP_R_STATUS_TOO_OLD ;
 int OCSPerr (int ,int ) ;
 scalar_t__ X509_cmp_time (int *,scalar_t__*) ;
 int time (scalar_t__*) ;

int OCSP_check_validity(ASN1_GENERALIZEDTIME *thisupd,
                        ASN1_GENERALIZEDTIME *nextupd, long nsec, long maxsec)
{
    int ret = 1;
    time_t t_now, t_tmp;
    time(&t_now);

    if (!ASN1_GENERALIZEDTIME_check(thisupd)) {
        OCSPerr(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_ERROR_IN_THISUPDATE_FIELD);
        ret = 0;
    } else {
        t_tmp = t_now + nsec;
        if (X509_cmp_time(thisupd, &t_tmp) > 0) {
            OCSPerr(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_STATUS_NOT_YET_VALID);
            ret = 0;
        }





        if (maxsec >= 0) {
            t_tmp = t_now - maxsec;
            if (X509_cmp_time(thisupd, &t_tmp) < 0) {
                OCSPerr(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_STATUS_TOO_OLD);
                ret = 0;
            }
        }
    }

    if (!nextupd)
        return ret;


    if (!ASN1_GENERALIZEDTIME_check(nextupd)) {
        OCSPerr(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_ERROR_IN_NEXTUPDATE_FIELD);
        ret = 0;
    } else {
        t_tmp = t_now - nsec;
        if (X509_cmp_time(nextupd, &t_tmp) < 0) {
            OCSPerr(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_STATUS_EXPIRED);
            ret = 0;
        }
    }


    if (ASN1_STRING_cmp(nextupd, thisupd) < 0) {
        OCSPerr(OCSP_F_OCSP_CHECK_VALIDITY,
                OCSP_R_NEXTUPDATE_BEFORE_THISUPDATE);
        ret = 0;
    }

    return ret;
}
