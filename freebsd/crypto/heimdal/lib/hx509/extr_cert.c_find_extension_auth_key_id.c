
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef TYPE_2__ Extension ;
typedef int Certificate ;
typedef int AuthorityKeyIdentifier ;


 int HX509_EXTENSION_NOT_FOUND ;
 int asn1_oid_id_x509_ce_authorityKeyIdentifier ;
 int decode_AuthorityKeyIdentifier (int ,int ,int *,size_t*) ;
 TYPE_2__* find_extension (int const*,int *,size_t*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
find_extension_auth_key_id(const Certificate *subject,
      AuthorityKeyIdentifier *ai)
{
    const Extension *e;
    size_t size;
    size_t i = 0;

    memset(ai, 0, sizeof(*ai));

    e = find_extension(subject, &asn1_oid_id_x509_ce_authorityKeyIdentifier, &i);
    if (e == ((void*)0))
 return HX509_EXTENSION_NOT_FOUND;

    return decode_AuthorityKeyIdentifier(e->extnValue.data,
      e->extnValue.length,
      ai, &size);
}
