
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef TYPE_2__ Extension ;
typedef int ExtKeyUsage ;
typedef int Certificate ;


 int HX509_EXTENSION_NOT_FOUND ;
 int asn1_oid_id_x509_ce_extKeyUsage ;
 int decode_ExtKeyUsage (int ,int ,int *,size_t*) ;
 TYPE_2__* find_extension (int const*,int *,size_t*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
find_extension_eku(const Certificate *cert, ExtKeyUsage *eku)
{
    const Extension *e;
    size_t size;
    size_t i = 0;

    memset(eku, 0, sizeof(*eku));

    e = find_extension(cert, &asn1_oid_id_x509_ce_extKeyUsage, &i);
    if (e == ((void*)0))
 return HX509_EXTENSION_NOT_FOUND;

    return decode_ExtKeyUsage(e->extnValue.data,
         e->extnValue.length,
         eku, &size);
}
