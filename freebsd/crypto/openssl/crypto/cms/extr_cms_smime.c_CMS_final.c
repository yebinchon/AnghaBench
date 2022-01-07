
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 int BIO_flush (int *) ;
 int CMS_F_CMS_FINAL ;
 int CMS_R_CMS_DATAFINAL_ERROR ;
 int CMS_R_CMS_LIB ;
 int CMS_dataFinal (int *,int *) ;
 int * CMS_dataInit (int *,int *) ;
 int CMSerr (int ,int ) ;
 int SMIME_crlf_copy (int *,int *,unsigned int) ;
 int do_free_upto (int *,int *) ;

int CMS_final(CMS_ContentInfo *cms, BIO *data, BIO *dcont, unsigned int flags)
{
    BIO *cmsbio;
    int ret = 0;

    if ((cmsbio = CMS_dataInit(cms, dcont)) == ((void*)0)) {
        CMSerr(CMS_F_CMS_FINAL, CMS_R_CMS_LIB);
        return 0;
    }

    SMIME_crlf_copy(data, cmsbio, flags);

    (void)BIO_flush(cmsbio);

    if (!CMS_dataFinal(cms, cmsbio)) {
        CMSerr(CMS_F_CMS_FINAL, CMS_R_CMS_DATAFINAL_ERROR);
        goto err;
    }

    ret = 1;

 err:
    do_free_upto(cmsbio, dcont);

    return ret;

}
