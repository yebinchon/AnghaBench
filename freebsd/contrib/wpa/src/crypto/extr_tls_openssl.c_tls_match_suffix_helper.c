
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ stack_index_t ;
typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
typedef int X509 ;
struct TYPE_10__ {int length; int data; } ;
struct TYPE_8__ {TYPE_1__* dNSName; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_7__ {int length; int data; } ;
typedef TYPE_3__ GENERAL_NAME ;
typedef TYPE_4__ ASN1_STRING ;


 int GENERAL_NAME_free ;
 scalar_t__ GEN_DNS ;
 int MSG_DEBUG ;
 int NID_commonName ;
 int NID_subject_alt_name ;
 TYPE_4__* X509_NAME_ENTRY_get_data (int *) ;
 int * X509_NAME_get_entry (int *,int) ;
 int X509_NAME_get_index_by_NID (int *,int ,int) ;
 void* X509_get_ext_d2i (int *,int ,int *,int *) ;
 int * X509_get_subject_name (int *) ;
 int domain_suffix_match (int ,int ,char const*,size_t,int) ;
 scalar_t__ sk_GENERAL_NAME_num (void*) ;
 int sk_GENERAL_NAME_pop_free (void*,int ) ;
 TYPE_3__* sk_GENERAL_NAME_value (void*,scalar_t__) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_match_suffix_helper(X509 *cert, const char *match,
       size_t match_len, int full)
{
 GENERAL_NAME *gen;
 void *ext;
 int i;
 stack_index_t j;
 int dns_name = 0;
 X509_NAME *name;

 wpa_printf(MSG_DEBUG, "TLS: Match domain against %s%s",
     full ? "": "suffix ", match);

 ext = X509_get_ext_d2i(cert, NID_subject_alt_name, ((void*)0), ((void*)0));

 for (j = 0; ext && j < sk_GENERAL_NAME_num(ext); j++) {
  gen = sk_GENERAL_NAME_value(ext, j);
  if (gen->type != GEN_DNS)
   continue;
  dns_name++;
  wpa_hexdump_ascii(MSG_DEBUG, "TLS: Certificate dNSName",
      gen->d.dNSName->data,
      gen->d.dNSName->length);
  if (domain_suffix_match(gen->d.dNSName->data,
     gen->d.dNSName->length,
     match, match_len, full) == 1) {
   wpa_printf(MSG_DEBUG, "TLS: %s in dNSName found",
       full ? "Match" : "Suffix match");
   sk_GENERAL_NAME_pop_free(ext, GENERAL_NAME_free);
   return 1;
  }
 }
 sk_GENERAL_NAME_pop_free(ext, GENERAL_NAME_free);

 if (dns_name) {
  wpa_printf(MSG_DEBUG, "TLS: None of the dNSName(s) matched");
  return 0;
 }

 name = X509_get_subject_name(cert);
 i = -1;
 for (;;) {
  X509_NAME_ENTRY *e;
  ASN1_STRING *cn;

  i = X509_NAME_get_index_by_NID(name, NID_commonName, i);
  if (i == -1)
   break;
  e = X509_NAME_get_entry(name, i);
  if (e == ((void*)0))
   continue;
  cn = X509_NAME_ENTRY_get_data(e);
  if (cn == ((void*)0))
   continue;
  wpa_hexdump_ascii(MSG_DEBUG, "TLS: Certificate commonName",
      cn->data, cn->length);
  if (domain_suffix_match(cn->data, cn->length,
     match, match_len, full) == 1) {
   wpa_printf(MSG_DEBUG, "TLS: %s in commonName found",
       full ? "Match" : "Suffix match");
   return 1;
  }
 }

 wpa_printf(MSG_DEBUG, "TLS: No CommonName %smatch found",
     full ? "": "suffix ");
 return 0;
}
