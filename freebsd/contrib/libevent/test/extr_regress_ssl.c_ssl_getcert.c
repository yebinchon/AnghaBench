
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int X509_NAME ;
typedef int X509 ;
typedef int EVP_PKEY ;


 scalar_t__ ASN1_INTEGER_set (int ,long) ;
 int EVP_sha1 () ;
 int MBSTRING_ASC ;
 int NID_undef ;
 int OBJ_txt2nid (char*) ;
 scalar_t__ X509_NAME_add_entry_by_NID (int *,int,int ,unsigned char*,int,int,int ) ;
 int * X509_NAME_new () ;
 int X509_free (int *) ;
 int X509_get_notAfter (int *) ;
 int X509_get_notBefore (int *) ;
 int X509_get_serialNumber (int *) ;
 int * X509_new () ;
 int X509_set_issuer_name (int *,int *) ;
 int X509_set_pubkey (int *,int *) ;
 int X509_set_subject_name (int *,int *) ;
 scalar_t__ X509_set_version (int *,int) ;
 scalar_t__ X509_sign (int *,int *,int ) ;
 int X509_time_adj (int ,int ,scalar_t__*) ;
 int * ssl_getkey () ;
 scalar_t__ time (int *) ;
 int tt_assert (int) ;

X509 *
ssl_getcert(void)
{



 X509 *x509 = ((void*)0);
 X509_NAME *name = ((void*)0);
 EVP_PKEY *key = ssl_getkey();
 int nid;
 time_t now = time(((void*)0));

 tt_assert(key);

 x509 = X509_new();
 tt_assert(x509);
 tt_assert(0 != X509_set_version(x509, 2));
 tt_assert(0 != ASN1_INTEGER_set(X509_get_serialNumber(x509),
  (long)now));

 name = X509_NAME_new();
 tt_assert(name);
 nid = OBJ_txt2nid("commonName");
 tt_assert(NID_undef != nid);
 tt_assert(0 != X509_NAME_add_entry_by_NID(
      name, nid, MBSTRING_ASC, (unsigned char*)"example.com",
      -1, -1, 0));

 X509_set_subject_name(x509, name);
 X509_set_issuer_name(x509, name);

 X509_time_adj(X509_get_notBefore(x509), 0, &now);
 now += 3600;
 X509_time_adj(X509_get_notAfter(x509), 0, &now);
 X509_set_pubkey(x509, key);
 tt_assert(0 != X509_sign(x509, key, EVP_sha1()));

 return x509;
end:
 X509_free(x509);
 return ((void*)0);
}
