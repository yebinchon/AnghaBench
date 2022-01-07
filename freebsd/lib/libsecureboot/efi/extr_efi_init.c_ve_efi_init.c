
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_data ;
typedef int br_x509_certificate ;


 int * efi_get_forbidden_certs (size_t*) ;
 int * efi_get_forbidden_digests (size_t*) ;
 int * efi_get_trusted_certs (size_t*) ;
 int efi_secure_boot_enabled () ;
 int free_certificates (int *,size_t) ;
 size_t ve_forbidden_anchors_add (int *,size_t) ;
 int ve_forbidden_digest_add (int *,size_t) ;
 size_t ve_trust_anchors_add (int *,size_t) ;
 int xfree (int *) ;

void
ve_efi_init(void)
{
 br_x509_certificate *xcs;
 hash_data *digests;
 size_t num;
 int result;
 static int once = 0;

 if (once > 0)
  return;

 once = 1;

 result = efi_secure_boot_enabled();
 if (result <= 0)
  return;

 xcs = efi_get_trusted_certs(&num);
 if (num > 0 && xcs != ((void*)0)) {
  num = ve_trust_anchors_add(xcs, num);
  free_certificates(xcs, num);
 }
 xcs = efi_get_forbidden_certs(&num);
 if (num > 0 && xcs != ((void*)0)) {
  num = ve_forbidden_anchors_add(xcs, num);
  free_certificates(xcs, num);
 }
 digests = efi_get_forbidden_digests(&num);
 if (num > 0 && digests != ((void*)0)) {
  ve_forbidden_digest_add(digests, num);




  xfree(digests);
 }

 return;
}
