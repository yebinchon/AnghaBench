
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * other; } ;
struct TYPE_9__ {TYPE_1__ d; int type; } ;
typedef TYPE_2__ PKCS7 ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int * ASN1_TYPE_new () ;
 int ASN1_TYPE_set (int *,int ,int *) ;
 int NID_id_smime_ct_TSTInfo ;
 int OBJ_nid2obj (int ) ;
 int PKCS7_free (TYPE_2__*) ;
 TYPE_2__* PKCS7_new () ;
 int PKCS7_set_content (TYPE_2__*,TYPE_2__*) ;
 int V_ASN1_OCTET_STRING ;

__attribute__((used)) static int ts_TST_INFO_content_new(PKCS7 *p7)
{
    PKCS7 *ret = ((void*)0);
    ASN1_OCTET_STRING *octet_string = ((void*)0);


    if ((ret = PKCS7_new()) == ((void*)0))
        goto err;
    if ((ret->d.other = ASN1_TYPE_new()) == ((void*)0))
        goto err;
    ret->type = OBJ_nid2obj(NID_id_smime_ct_TSTInfo);
    if ((octet_string = ASN1_OCTET_STRING_new()) == ((void*)0))
        goto err;
    ASN1_TYPE_set(ret->d.other, V_ASN1_OCTET_STRING, octet_string);
    octet_string = ((void*)0);


    if (!PKCS7_set_content(p7, ret))
        goto err;

    return 1;
 err:
    ASN1_OCTET_STRING_free(octet_string);
    PKCS7_free(ret);
    return 0;
}
