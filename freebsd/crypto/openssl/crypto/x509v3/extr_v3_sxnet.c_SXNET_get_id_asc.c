
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SXNET ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * SXNET_get_id_INTEGER (int *,int *) ;
 int X509V3_F_SXNET_GET_ID_ASC ;
 int X509V3_R_ERROR_CONVERTING_ZONE ;
 int X509V3err (int ,int ) ;
 int * s2i_ASN1_INTEGER (int *,char const*) ;

ASN1_OCTET_STRING *SXNET_get_id_asc(SXNET *sx, const char *zone)
{
    ASN1_INTEGER *izone;
    ASN1_OCTET_STRING *oct;

    if ((izone = s2i_ASN1_INTEGER(((void*)0), zone)) == ((void*)0)) {
        X509V3err(X509V3_F_SXNET_GET_ID_ASC, X509V3_R_ERROR_CONVERTING_ZONE);
        return ((void*)0);
    }
    oct = SXNET_get_id_INTEGER(sx, izone);
    ASN1_INTEGER_free(izone);
    return oct;
}
