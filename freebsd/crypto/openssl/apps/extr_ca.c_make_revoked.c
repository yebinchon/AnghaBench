
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_REVOKED ;
typedef int ASN1_TIME ;
typedef int ASN1_OBJECT ;
typedef int ASN1_GENERALIZEDTIME ;
typedef int ASN1_ENUMERATED ;


 int ASN1_ENUMERATED_free (int *) ;
 int * ASN1_ENUMERATED_new () ;
 int ASN1_ENUMERATED_set (int *,int) ;
 int ASN1_GENERALIZEDTIME_free (int *) ;
 int ASN1_OBJECT_free (int *) ;
 int ASN1_TIME_free (int *) ;
 int NID_crl_reason ;
 int NID_hold_instruction_code ;
 int NID_invalidity_date ;
 int OCSP_REVOKED_STATUS_NOSTATUS ;
 int OPENSSL_free (char*) ;
 int X509_REVOKED_add1_ext_i2d (int *,int ,int *,int ,int ) ;
 int X509_REVOKED_set_revocationDate (int *,int *) ;
 int unpack_revinfo (int **,int*,int **,int **,char const*) ;

__attribute__((used)) static int make_revoked(X509_REVOKED *rev, const char *str)
{
    char *tmp = ((void*)0);
    int reason_code = -1;
    int i, ret = 0;
    ASN1_OBJECT *hold = ((void*)0);
    ASN1_GENERALIZEDTIME *comp_time = ((void*)0);
    ASN1_ENUMERATED *rtmp = ((void*)0);

    ASN1_TIME *revDate = ((void*)0);

    i = unpack_revinfo(&revDate, &reason_code, &hold, &comp_time, str);

    if (i == 0)
        goto end;

    if (rev && !X509_REVOKED_set_revocationDate(rev, revDate))
        goto end;

    if (rev && (reason_code != OCSP_REVOKED_STATUS_NOSTATUS)) {
        rtmp = ASN1_ENUMERATED_new();
        if (rtmp == ((void*)0) || !ASN1_ENUMERATED_set(rtmp, reason_code))
            goto end;
        if (!X509_REVOKED_add1_ext_i2d(rev, NID_crl_reason, rtmp, 0, 0))
            goto end;
    }

    if (rev && comp_time) {
        if (!X509_REVOKED_add1_ext_i2d
            (rev, NID_invalidity_date, comp_time, 0, 0))
            goto end;
    }
    if (rev && hold) {
        if (!X509_REVOKED_add1_ext_i2d
            (rev, NID_hold_instruction_code, hold, 0, 0))
            goto end;
    }

    if (reason_code != OCSP_REVOKED_STATUS_NOSTATUS)
        ret = 2;
    else
        ret = 1;

 end:

    OPENSSL_free(tmp);
    ASN1_OBJECT_free(hold);
    ASN1_GENERALIZEDTIME_free(comp_time);
    ASN1_ENUMERATED_free(rtmp);
    ASN1_TIME_free(revDate);

    return ret;
}
