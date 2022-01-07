
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct module_env {int scratch; } ;


 scalar_t__ LDNS_SHA1 ;
 int VERB_QUERY ;
 int ds_create_dnskey_digest (struct module_env*,struct ub_packed_rrset_key*,size_t,struct ub_packed_rrset_key*,size_t,int *) ;
 size_t ds_digest_size_algo (struct ub_packed_rrset_key*,size_t) ;
 scalar_t__ ds_get_digest_algo (struct ub_packed_rrset_key*,size_t) ;
 int ds_get_sigdata (struct ub_packed_rrset_key*,size_t,int **,size_t*) ;
 scalar_t__ fake_sha1 ;
 scalar_t__ memcmp (int *,int *,size_t) ;
 int * regional_alloc (int ,size_t) ;
 int verbose (int ,char*) ;

int ds_digest_match_dnskey(struct module_env* env,
 struct ub_packed_rrset_key* dnskey_rrset, size_t dnskey_idx,
 struct ub_packed_rrset_key* ds_rrset, size_t ds_idx)
{
 uint8_t* ds;
 size_t dslen;
 uint8_t* digest;
 size_t digestlen = ds_digest_size_algo(ds_rrset, ds_idx);

 if(digestlen == 0) {
  verbose(VERB_QUERY, "DS fail: not supported, or DS RR "
   "format error");
  return 0;
 }

 if(fake_sha1 && ds_get_digest_algo(ds_rrset, ds_idx)==LDNS_SHA1)
  return 1;



 ds_get_sigdata(ds_rrset, ds_idx, &ds, &dslen);
 if(!ds || dslen != digestlen) {
  verbose(VERB_QUERY, "DS fail: DS RR algo and digest do not "
   "match each other");
  return 0;
 }

 digest = regional_alloc(env->scratch, digestlen);
 if(!digest) {
  verbose(VERB_QUERY, "DS fail: out of memory");
  return 0;
 }
 if(!ds_create_dnskey_digest(env, dnskey_rrset, dnskey_idx, ds_rrset,
  ds_idx, digest)) {
  verbose(VERB_QUERY, "DS fail: could not calc key digest");
  return 0;
 }
 if(memcmp(digest, ds, dslen) != 0) {
  verbose(VERB_QUERY, "DS fail: digest is different");
  return 0;
 }
 return 1;
}
