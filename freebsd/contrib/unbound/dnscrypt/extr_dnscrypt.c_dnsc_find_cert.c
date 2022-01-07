
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sldns_buffer {int dummy; } ;
struct dnscrypt_query_header {int magic_query; } ;
struct dnsc_env {size_t signed_certs_count; TYPE_1__* certs; } ;
struct TYPE_3__ {int magic_query; } ;
typedef TYPE_1__ dnsccert ;


 int DNSCRYPT_MAGIC_HEADER_LEN ;
 scalar_t__ DNSCRYPT_QUERY_HEADER_SIZE ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ sldns_buffer_begin (struct sldns_buffer*) ;
 scalar_t__ sldns_buffer_limit (struct sldns_buffer*) ;

__attribute__((used)) static const dnsccert *
dnsc_find_cert(struct dnsc_env* dnscenv, struct sldns_buffer* buffer)
{
 const dnsccert *certs = dnscenv->certs;
 struct dnscrypt_query_header *dnscrypt_header;
 size_t i;

 if (sldns_buffer_limit(buffer) < DNSCRYPT_QUERY_HEADER_SIZE) {
  return ((void*)0);
 }
 dnscrypt_header = (struct dnscrypt_query_header *)sldns_buffer_begin(buffer);
 for (i = 0U; i < dnscenv->signed_certs_count; i++) {
  if (memcmp(certs[i].magic_query, dnscrypt_header->magic_query,
                   DNSCRYPT_MAGIC_HEADER_LEN) == 0) {
   return &certs[i];
  }
 }
 return ((void*)0);
}
