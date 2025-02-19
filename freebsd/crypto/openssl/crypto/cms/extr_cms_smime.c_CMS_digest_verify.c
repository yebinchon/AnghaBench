
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int BIO ;


 int CMS_F_CMS_DIGEST_VERIFY ;
 int CMS_R_TYPE_NOT_DIGESTED_DATA ;
 int * CMS_dataInit (int *,int *) ;
 int CMS_get0_type (int *) ;
 int CMSerr (int ,int ) ;
 scalar_t__ NID_pkcs7_digest ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int check_content (int *) ;
 int cms_DigestedData_do_final (int *,int *,int) ;
 int cms_copy_content (int *,int *,unsigned int) ;
 int do_free_upto (int *,int *) ;

int CMS_digest_verify(CMS_ContentInfo *cms, BIO *dcont, BIO *out,
                      unsigned int flags)
{
    BIO *cont;
    int r;
    if (OBJ_obj2nid(CMS_get0_type(cms)) != NID_pkcs7_digest) {
        CMSerr(CMS_F_CMS_DIGEST_VERIFY, CMS_R_TYPE_NOT_DIGESTED_DATA);
        return 0;
    }

    if (!dcont && !check_content(cms))
        return 0;

    cont = CMS_dataInit(cms, dcont);
    if (!cont)
        return 0;
    r = cms_copy_content(out, cont, flags);
    if (r)
        r = cms_DigestedData_do_final(cms, cont, 1);
    do_free_upto(cont, dcont);
    return r;
}
