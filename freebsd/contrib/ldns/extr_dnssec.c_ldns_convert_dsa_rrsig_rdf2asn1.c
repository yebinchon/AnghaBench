
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;
struct TYPE_6__ {int * s; int * r; } ;
typedef TYPE_1__ DSA_SIG ;
typedef int BIGNUM ;


 int BN_bin2bn (unsigned char*,int,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int DSA_SIG_free (TYPE_1__*) ;
 TYPE_1__* DSA_SIG_new () ;
 int DSA_SIG_set0 (TYPE_1__*,int *,int *) ;
 int LDNS_STATUS_CRYPTO_ALGO_NOT_IMPL ;
 int LDNS_STATUS_MEM_ERR ;
 int LDNS_STATUS_SSL_ERR ;
 int LDNS_STATUS_SYNTAX_RDATA_ERR ;
 int SHA_DIGEST_LENGTH ;
 int free (unsigned char*) ;
 int i2d_DSA_SIG (TYPE_1__*,unsigned char**) ;
 scalar_t__ ldns_buffer_reserve (int *,size_t) ;
 int ldns_buffer_status (int *) ;
 int ldns_buffer_write (int *,unsigned char*,size_t) ;
 scalar_t__ ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;

ldns_status
ldns_convert_dsa_rrsig_rdf2asn1(ldns_buffer *target_buffer,
        const ldns_rdf *sig_rdf)
{
 (void)target_buffer; (void)sig_rdf;
 return LDNS_STATUS_CRYPTO_ALGO_NOT_IMPL;

}
