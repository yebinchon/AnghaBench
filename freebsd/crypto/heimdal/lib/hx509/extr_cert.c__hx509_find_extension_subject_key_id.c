
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef int SubjectKeyIdentifier ;
typedef TYPE_2__ Extension ;
typedef int Certificate ;


 int HX509_EXTENSION_NOT_FOUND ;
 int asn1_oid_id_x509_ce_subjectKeyIdentifier ;
 int decode_SubjectKeyIdentifier (int ,int ,int *,size_t*) ;
 TYPE_2__* find_extension (int const*,int *,size_t*) ;
 int memset (int *,int ,int) ;

int
_hx509_find_extension_subject_key_id(const Certificate *issuer,
         SubjectKeyIdentifier *si)
{
    const Extension *e;
    size_t size;
    size_t i = 0;

    memset(si, 0, sizeof(*si));

    e = find_extension(issuer, &asn1_oid_id_x509_ce_subjectKeyIdentifier, &i);
    if (e == ((void*)0))
 return HX509_EXTENSION_NOT_FOUND;

    return decode_SubjectKeyIdentifier(e->extnValue.data,
           e->extnValue.length,
           si, &size);
}
