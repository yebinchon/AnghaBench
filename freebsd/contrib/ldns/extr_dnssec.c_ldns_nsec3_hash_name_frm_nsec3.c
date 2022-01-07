
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_FREE (int *) ;
 int ldns_nsec3_algorithm (int const*) ;
 int * ldns_nsec3_hash_name (int const*,int ,int ,int ,int *) ;
 int ldns_nsec3_iterations (int const*) ;
 int * ldns_nsec3_salt_data (int const*) ;
 int ldns_nsec3_salt_length (int const*) ;

ldns_rdf *
ldns_nsec3_hash_name_frm_nsec3(const ldns_rr *nsec, const ldns_rdf *name)
{
 uint8_t algorithm;
 uint16_t iterations;
 uint8_t salt_length;
 uint8_t *salt = 0;

 ldns_rdf *hashed_owner;

 algorithm = ldns_nsec3_algorithm(nsec);
 salt_length = ldns_nsec3_salt_length(nsec);
 salt = ldns_nsec3_salt_data(nsec);
 iterations = ldns_nsec3_iterations(nsec);

 hashed_owner = ldns_nsec3_hash_name(name,
         algorithm,
         iterations,
         salt_length,
         salt);

 LDNS_FREE(salt);
 return hashed_owner;
}
