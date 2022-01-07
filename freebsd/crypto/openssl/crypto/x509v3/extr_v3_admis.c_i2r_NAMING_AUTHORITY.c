
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3_ext_method {int dummy; } ;
typedef int objbuf ;
struct TYPE_2__ {int * namingAuthorityUrl; int * namingAuthorityText; int * namingAuthorityId; } ;
typedef TYPE_1__ NAMING_AUTHORITY ;
typedef int BIO ;


 scalar_t__ ASN1_STRING_print (int *,int *) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 char* OBJ_nid2ln (int ) ;
 int OBJ_obj2nid (int *) ;
 int OBJ_obj2txt (char*,int,int *,int) ;

__attribute__((used)) static int i2r_NAMING_AUTHORITY(const struct v3_ext_method *method, void *in,
                                BIO *bp, int ind)
{
    NAMING_AUTHORITY * namingAuthority = (NAMING_AUTHORITY*) in;

    if (namingAuthority == ((void*)0))
        return 0;

    if (namingAuthority->namingAuthorityId == ((void*)0)
        && namingAuthority->namingAuthorityText == ((void*)0)
        && namingAuthority->namingAuthorityUrl == ((void*)0))
        return 0;

    if (BIO_printf(bp, "%*snamingAuthority: ", ind, "") <= 0)
        goto err;

    if (namingAuthority->namingAuthorityId != ((void*)0)) {
        char objbuf[128];
        const char *ln = OBJ_nid2ln(OBJ_obj2nid(namingAuthority->namingAuthorityId));

        if (BIO_printf(bp, "%*s  admissionAuthorityId: ", ind, "") <= 0)
            goto err;

        OBJ_obj2txt(objbuf, sizeof(objbuf), namingAuthority->namingAuthorityId, 1);

        if (BIO_printf(bp, "%s%s%s%s\n", ln ? ln : "",
                       ln ? " (" : "", objbuf, ln ? ")" : "") <= 0)
            goto err;
    }
    if (namingAuthority->namingAuthorityText != ((void*)0)) {
        if (BIO_printf(bp, "%*s  namingAuthorityText: ", ind, "") <= 0
            || ASN1_STRING_print(bp, namingAuthority->namingAuthorityText) <= 0
            || BIO_printf(bp, "\n") <= 0)
            goto err;
    }
    if (namingAuthority->namingAuthorityUrl != ((void*)0) ) {
        if (BIO_printf(bp, "%*s  namingAuthorityUrl: ", ind, "") <= 0
            || ASN1_STRING_print(bp, namingAuthority->namingAuthorityUrl) <= 0
            || BIO_printf(bp, "\n") <= 0)
            goto err;
    }
    return 1;

err:
    return 0;
}
