
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef int GeneralNames ;
typedef TYPE_2__ Extension ;
typedef int Certificate ;


 int HX509_EXTENSION_NOT_FOUND ;
 int asn1_oid_id_x509_ce_subjectAltName ;
 int decode_GeneralNames (int ,int ,int *,size_t*) ;
 TYPE_2__* find_extension (int const*,int *,size_t*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
find_extension_subject_alt_name(const Certificate *cert, size_t *i,
    GeneralNames *sa)
{
    const Extension *e;
    size_t size;

    memset(sa, 0, sizeof(*sa));

    e = find_extension(cert, &asn1_oid_id_x509_ce_subjectAltName, i);
    if (e == ((void*)0))
 return HX509_EXTENSION_NOT_FOUND;

    return decode_GeneralNames(e->extnValue.data,
          e->extnValue.length,
          sa, &size);
}
