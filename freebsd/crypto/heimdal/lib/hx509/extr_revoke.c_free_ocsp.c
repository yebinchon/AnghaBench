
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revoke_ocsp {int signer; int certs; int ocsp; int path; } ;


 int free (int ) ;
 int free_OCSPBasicOCSPResponse (int *) ;
 int hx509_cert_free (int ) ;
 int hx509_certs_free (int *) ;

__attribute__((used)) static void
free_ocsp(struct revoke_ocsp *ocsp)
{
    free(ocsp->path);
    free_OCSPBasicOCSPResponse(&ocsp->ocsp);
    hx509_certs_free(&ocsp->certs);
    hx509_cert_free(ocsp->signer);
}
