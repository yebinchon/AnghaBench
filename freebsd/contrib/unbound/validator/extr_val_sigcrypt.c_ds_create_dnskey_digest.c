
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t dname_len; int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct module_env {int * scratch_buffer; } ;
typedef int sldns_buffer ;


 int ds_get_digest_algo (struct ub_packed_rrset_key*,size_t) ;
 int query_dname_tolower (scalar_t__) ;
 int rrset_get_rdata (struct ub_packed_rrset_key*,size_t,int **,size_t*) ;
 int secalgo_ds_digest (int ,unsigned char*,int ,unsigned char*) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 int sldns_buffer_limit (int *) ;
 int sldns_buffer_write (int *,int *,size_t) ;

__attribute__((used)) static int
ds_create_dnskey_digest(struct module_env* env,
 struct ub_packed_rrset_key* dnskey_rrset, size_t dnskey_idx,
 struct ub_packed_rrset_key* ds_rrset, size_t ds_idx,
 uint8_t* digest)
{
 sldns_buffer* b = env->scratch_buffer;
 uint8_t* dnskey_rdata;
 size_t dnskey_len;
 rrset_get_rdata(dnskey_rrset, dnskey_idx, &dnskey_rdata, &dnskey_len);




 sldns_buffer_clear(b);
 sldns_buffer_write(b, dnskey_rrset->rk.dname,
  dnskey_rrset->rk.dname_len);
 query_dname_tolower(sldns_buffer_begin(b));
 sldns_buffer_write(b, dnskey_rdata+2, dnskey_len-2);
 sldns_buffer_flip(b);

 return secalgo_ds_digest(ds_get_digest_algo(ds_rrset, ds_idx),
  (unsigned char*)sldns_buffer_begin(b), sldns_buffer_limit(b),
  (unsigned char*)digest);
}
