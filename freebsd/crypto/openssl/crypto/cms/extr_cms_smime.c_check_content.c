
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CMS_ContentInfo ;
typedef int ASN1_OCTET_STRING ;


 int CMS_F_CHECK_CONTENT ;
 int CMS_R_NO_CONTENT ;
 int ** CMS_get0_content (int *) ;
 int CMSerr (int ,int ) ;

__attribute__((used)) static int check_content(CMS_ContentInfo *cms)
{
    ASN1_OCTET_STRING **pos = CMS_get0_content(cms);
    if (!pos || !*pos) {
        CMSerr(CMS_F_CHECK_CONTENT, CMS_R_NO_CONTENT);
        return 0;
    }
    return 1;
}
