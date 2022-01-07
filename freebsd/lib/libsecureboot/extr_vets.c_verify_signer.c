
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_x509_pkey ;
typedef int br_x509_certificate ;
typedef int br_name_element ;


 scalar_t__ VEC_LEN (int ) ;
 scalar_t__ check_forbidden_digests (int *,size_t) ;
 int forbidden_anchors ;
 int free_certificates (int *,size_t) ;
 int * read_certificates (char const*,size_t*) ;
 int trust_anchors ;
 int ve_error_set (char*) ;
 int ve_trust_init () ;
 int * verify_signer_xcs (int *,size_t,int *,size_t,int *) ;
 int xfreepkey (int *) ;

__attribute__((used)) static br_x509_pkey *
verify_signer(const char *certs,
    br_name_element *elts, size_t num_elts)
{
 br_x509_certificate *xcs;
 br_x509_pkey *pk;
 size_t num;

 pk = ((void*)0);

 ve_trust_init();
 xcs = read_certificates(certs, &num);
 if (xcs == ((void*)0)) {
  ve_error_set("cannot read certificates\n");
  return (((void*)0));
 }







 if (VEC_LEN(forbidden_anchors) > 0)
  pk = verify_signer_xcs(xcs, num, elts, num_elts, &forbidden_anchors);
 if (pk != ((void*)0)) {
  ve_error_set("Certificate is on forbidden list\n");
  xfreepkey(pk);
  pk = ((void*)0);
  goto out;
 }

 pk = verify_signer_xcs(xcs, num, elts, num_elts, &trust_anchors);
 if (pk == ((void*)0))
  goto out;





 if (check_forbidden_digests(xcs, num)) {
  ve_error_set("Certificate hash is on forbidden list\n");
  xfreepkey(pk);
  pk = ((void*)0);
 }
out:
 free_certificates(xcs, num);
 return (pk);
}
