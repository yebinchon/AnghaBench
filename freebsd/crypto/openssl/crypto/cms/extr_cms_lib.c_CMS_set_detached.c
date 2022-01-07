
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef int CMS_ContentInfo ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_OCTET_STRING_new () ;
 int ASN1_STRING_FLAG_CONT ;
 int CMS_F_CMS_SET_DETACHED ;
 TYPE_1__** CMS_get0_content (int *) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;

int CMS_set_detached(CMS_ContentInfo *cms, int detached)
{
    ASN1_OCTET_STRING **pos;
    pos = CMS_get0_content(cms);
    if (!pos)
        return 0;
    if (detached) {
        ASN1_OCTET_STRING_free(*pos);
        *pos = ((void*)0);
        return 1;
    }
    if (*pos == ((void*)0))
        *pos = ASN1_OCTET_STRING_new();
    if (*pos != ((void*)0)) {



        (*pos)->flags |= ASN1_STRING_FLAG_CONT;
        return 1;
    }
    CMSerr(CMS_F_CMS_SET_DETACHED, ERR_R_MALLOC_FAILURE);
    return 0;
}
