
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; int length; int data; } ;
typedef int CMS_ContentInfo ;
typedef int BIO ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 scalar_t__ ASN1_STRING_FLAG_CONT ;
 int * BIO_new (int ) ;
 int * BIO_new_mem_buf (int ,int ) ;
 int BIO_s_mem () ;
 int BIO_s_null () ;
 TYPE_1__** CMS_get0_content (int *) ;

BIO *cms_content_bio(CMS_ContentInfo *cms)
{
    ASN1_OCTET_STRING **pos = CMS_get0_content(cms);
    if (!pos)
        return ((void*)0);

    if (!*pos)
        return BIO_new(BIO_s_null());



    if (!*pos || ((*pos)->flags == ASN1_STRING_FLAG_CONT))
        return BIO_new(BIO_s_mem());

    return BIO_new_mem_buf((*pos)->data, (*pos)->length);
}
