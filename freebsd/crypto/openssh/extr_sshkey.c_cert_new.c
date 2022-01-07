
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey_cert {int * signature_key; int * principals; int * key_id; int * extensions; int * critical; int * certblob; } ;


 struct sshkey_cert* calloc (int,int) ;
 int cert_free (struct sshkey_cert*) ;
 void* sshbuf_new () ;

__attribute__((used)) static struct sshkey_cert *
cert_new(void)
{
 struct sshkey_cert *cert;

 if ((cert = calloc(1, sizeof(*cert))) == ((void*)0))
  return ((void*)0);
 if ((cert->certblob = sshbuf_new()) == ((void*)0) ||
     (cert->critical = sshbuf_new()) == ((void*)0) ||
     (cert->extensions = sshbuf_new()) == ((void*)0)) {
  cert_free(cert);
  return ((void*)0);
 }
 cert->key_id = ((void*)0);
 cert->principals = ((void*)0);
 cert->signature_key = ((void*)0);
 return cert;
}
