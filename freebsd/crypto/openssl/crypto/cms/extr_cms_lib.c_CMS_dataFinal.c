
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int contentType; } ;
typedef TYPE_1__ CMS_ContentInfo ;
typedef int BIO ;
typedef TYPE_2__ ASN1_OCTET_STRING ;


 int ASN1_STRING_FLAG_CONT ;
 int ASN1_STRING_set0 (TYPE_2__*,unsigned char*,long) ;
 int BIO_FLAGS_MEM_RDONLY ;
 int BIO_TYPE_MEM ;
 int * BIO_find_type (int *,int ) ;
 long BIO_get_mem_data (int *,unsigned char**) ;
 int BIO_set_flags (int *,int ) ;
 int BIO_set_mem_eof_return (int *,int ) ;
 int CMS_F_CMS_DATAFINAL ;
 int CMS_R_CONTENT_NOT_FOUND ;
 int CMS_R_UNSUPPORTED_TYPE ;
 TYPE_2__** CMS_get0_content (TYPE_1__*) ;
 int CMSerr (int ,int ) ;






 int OBJ_obj2nid (int ) ;
 int cms_DigestedData_do_final (TYPE_1__*,int *,int ) ;
 int cms_SignedData_final (TYPE_1__*,int *) ;

int CMS_dataFinal(CMS_ContentInfo *cms, BIO *cmsbio)
{
    ASN1_OCTET_STRING **pos = CMS_get0_content(cms);
    if (!pos)
        return 0;

    if (*pos && ((*pos)->flags & ASN1_STRING_FLAG_CONT)) {
        BIO *mbio;
        unsigned char *cont;
        long contlen;
        mbio = BIO_find_type(cmsbio, BIO_TYPE_MEM);
        if (!mbio) {
            CMSerr(CMS_F_CMS_DATAFINAL, CMS_R_CONTENT_NOT_FOUND);
            return 0;
        }
        contlen = BIO_get_mem_data(mbio, &cont);

        BIO_set_flags(mbio, BIO_FLAGS_MEM_RDONLY);
        BIO_set_mem_eof_return(mbio, 0);
        ASN1_STRING_set0(*pos, cont, contlen);
        (*pos)->flags &= ~ASN1_STRING_FLAG_CONT;
    }

    switch (OBJ_obj2nid(cms->contentType)) {

    case 132:
    case 129:
    case 130:
    case 133:

        return 1;

    case 128:
        return cms_SignedData_final(cms, cmsbio);

    case 131:
        return cms_DigestedData_do_final(cms, cmsbio, 0);

    default:
        CMSerr(CMS_F_CMS_DATAFINAL, CMS_R_UNSUPPORTED_TYPE);
        return 0;
    }
}
