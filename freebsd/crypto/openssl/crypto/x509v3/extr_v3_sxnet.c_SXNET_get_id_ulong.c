
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SXNET ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,unsigned long) ;
 int ERR_R_MALLOC_FAILURE ;
 int * SXNET_get_id_INTEGER (int *,int *) ;
 int X509V3_F_SXNET_GET_ID_ULONG ;
 int X509V3err (int ,int ) ;

ASN1_OCTET_STRING *SXNET_get_id_ulong(SXNET *sx, unsigned long lzone)
{
    ASN1_INTEGER *izone;
    ASN1_OCTET_STRING *oct;

    if ((izone = ASN1_INTEGER_new()) == ((void*)0)
        || !ASN1_INTEGER_set(izone, lzone)) {
        X509V3err(X509V3_F_SXNET_GET_ID_ULONG, ERR_R_MALLOC_FAILURE);
        ASN1_INTEGER_free(izone);
        return ((void*)0);
    }
    oct = SXNET_get_id_INTEGER(sx, izone);
    ASN1_INTEGER_free(izone);
    return oct;
}
