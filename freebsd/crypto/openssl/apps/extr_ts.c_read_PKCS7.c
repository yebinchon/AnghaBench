
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_TST_INFO ;
typedef int TS_STATUS_INFO ;
typedef int TS_RESP ;
typedef int PKCS7 ;
typedef int BIO ;


 int PKCS7_free (int *) ;
 int * PKCS7_to_TS_TST_INFO (int *) ;
 int TS_RESP_free (int *) ;
 int * TS_RESP_new () ;
 int TS_RESP_set_status_info (int *,int *) ;
 int TS_RESP_set_tst_info (int *,int *,int *) ;
 int TS_STATUS_GRANTED ;
 int TS_STATUS_INFO_free (int *) ;
 int * TS_STATUS_INFO_new () ;
 int TS_STATUS_INFO_set_status (int *,int ) ;
 int TS_TST_INFO_free (int *) ;
 int * d2i_PKCS7_bio (int *,int *) ;

__attribute__((used)) static TS_RESP *read_PKCS7(BIO *in_bio)
{
    int ret = 0;
    PKCS7 *token = ((void*)0);
    TS_TST_INFO *tst_info = ((void*)0);
    TS_RESP *resp = ((void*)0);
    TS_STATUS_INFO *si = ((void*)0);

    if ((token = d2i_PKCS7_bio(in_bio, ((void*)0))) == ((void*)0))
        goto end;
    if ((tst_info = PKCS7_to_TS_TST_INFO(token)) == ((void*)0))
        goto end;
    if ((resp = TS_RESP_new()) == ((void*)0))
        goto end;
    if ((si = TS_STATUS_INFO_new()) == ((void*)0))
        goto end;
    if (!TS_STATUS_INFO_set_status(si, TS_STATUS_GRANTED))
        goto end;
    if (!TS_RESP_set_status_info(resp, si))
        goto end;
    TS_RESP_set_tst_info(resp, token, tst_info);
    token = ((void*)0);
    tst_info = ((void*)0);
    ret = 1;

 end:
    PKCS7_free(token);
    TS_TST_INFO_free(tst_info);
    if (!ret) {
        TS_RESP_free(resp);
        resp = ((void*)0);
    }
    TS_STATUS_INFO_free(si);
    return resp;
}
