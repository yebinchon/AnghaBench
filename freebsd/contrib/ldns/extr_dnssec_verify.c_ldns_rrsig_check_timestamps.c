
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef scalar_t__ int32_t ;


 int LDNS_STATUS_CRYPTO_EXPIRATION_BEFORE_INCEPTION ;
 int LDNS_STATUS_CRYPTO_SIG_EXPIRED ;
 int LDNS_STATUS_CRYPTO_SIG_NOT_INCEPTED ;
 int LDNS_STATUS_OK ;
 scalar_t__ ldns_rdf2native_time_t (int ) ;
 int ldns_rr_rrsig_expiration (int const*) ;
 int ldns_rr_rrsig_inception (int const*) ;

__attribute__((used)) static ldns_status
ldns_rrsig_check_timestamps(const ldns_rr* rrsig, time_t now)
{
 int32_t inception, expiration;


 inception = (int32_t)ldns_rdf2native_time_t(
  ldns_rr_rrsig_inception(rrsig));
 expiration = (int32_t)ldns_rdf2native_time_t(
  ldns_rr_rrsig_expiration(rrsig));

 if (expiration - inception < 0) {

  return LDNS_STATUS_CRYPTO_EXPIRATION_BEFORE_INCEPTION;
 }
 if (((int32_t) now) - inception < 0) {

  return LDNS_STATUS_CRYPTO_SIG_NOT_INCEPTED;
 }
 if (expiration - ((int32_t) now) < 0) {

  return LDNS_STATUS_CRYPTO_SIG_EXPIRED;
 }
 return LDNS_STATUS_OK;
}
