
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sshkey {int dummy; } ;
struct pkcs11_provider {int dummy; } ;
typedef int pubkey_class ;
typedef int cert_class ;
struct TYPE_4__ {int member_2; int * pValue; int * member_1; int member_0; } ;
typedef int CK_ULONG ;
typedef int CK_OBJECT_CLASS ;
typedef TYPE_1__ CK_ATTRIBUTE ;


 int CKA_CLASS ;
 int CKA_ID ;
 int CKA_MODULUS ;
 int CKA_PUBLIC_EXPONENT ;
 int CKA_SUBJECT ;
 int CKA_VALUE ;
 int CKO_CERTIFICATE ;
 int CKO_PUBLIC_KEY ;
 scalar_t__ pkcs11_fetch_keys_filter (struct pkcs11_provider*,int ,TYPE_1__*,TYPE_1__*,struct sshkey***,int*) ;

__attribute__((used)) static int
pkcs11_fetch_keys(struct pkcs11_provider *p, CK_ULONG slotidx,
    struct sshkey ***keysp, int *nkeys)
{
 CK_OBJECT_CLASS pubkey_class = CKO_PUBLIC_KEY;
 CK_OBJECT_CLASS cert_class = CKO_CERTIFICATE;
 CK_ATTRIBUTE pubkey_filter[] = {
  { CKA_CLASS, ((void*)0), sizeof(pubkey_class) }
 };
 CK_ATTRIBUTE cert_filter[] = {
  { CKA_CLASS, ((void*)0), sizeof(cert_class) }
 };
 CK_ATTRIBUTE pubkey_attribs[] = {
  { CKA_ID, ((void*)0), 0 },
  { CKA_MODULUS, ((void*)0), 0 },
  { CKA_PUBLIC_EXPONENT, ((void*)0), 0 }
 };
 CK_ATTRIBUTE cert_attribs[] = {
  { CKA_ID, ((void*)0), 0 },
  { CKA_SUBJECT, ((void*)0), 0 },
  { CKA_VALUE, ((void*)0), 0 }
 };
 pubkey_filter[0].pValue = &pubkey_class;
 cert_filter[0].pValue = &cert_class;

 if (pkcs11_fetch_keys_filter(p, slotidx, pubkey_filter, pubkey_attribs,
     keysp, nkeys) < 0 ||
     pkcs11_fetch_keys_filter(p, slotidx, cert_filter, cert_attribs,
     keysp, nkeys) < 0)
  return (-1);
 return (0);
}
