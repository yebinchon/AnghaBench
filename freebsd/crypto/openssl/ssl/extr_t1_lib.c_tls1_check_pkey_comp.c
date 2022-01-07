
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* peer_ecpointformats; size_t peer_ecpointformats_len; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int EC_GROUP_method_of (int const*) ;
 int * EC_KEY_get0_group (int const*) ;
 scalar_t__ EC_KEY_get_conv_form (int const*) ;
 int EC_METHOD_get_field_type (int ) ;
 scalar_t__ EVP_PKEY_EC ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int NID_X9_62_characteristic_two_field ;
 int NID_X9_62_prime_field ;
 scalar_t__ POINT_CONVERSION_UNCOMPRESSED ;
 scalar_t__ SSL_IS_TLS13 (TYPE_2__*) ;
 unsigned char TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2 ;
 unsigned char TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime ;
 unsigned char TLSEXT_ECPOINTFORMAT_uncompressed ;

__attribute__((used)) static int tls1_check_pkey_comp(SSL *s, EVP_PKEY *pkey)
{
    const EC_KEY *ec;
    const EC_GROUP *grp;
    unsigned char comp_id;
    size_t i;


    if (EVP_PKEY_id(pkey) != EVP_PKEY_EC)
        return 1;
    ec = EVP_PKEY_get0_EC_KEY(pkey);
    grp = EC_KEY_get0_group(ec);


    if (EC_KEY_get_conv_form(ec) == POINT_CONVERSION_UNCOMPRESSED) {
            comp_id = TLSEXT_ECPOINTFORMAT_uncompressed;
    } else if (SSL_IS_TLS13(s)) {




            return 1;
    } else {
        int field_type = EC_METHOD_get_field_type(EC_GROUP_method_of(grp));

        if (field_type == NID_X9_62_prime_field)
            comp_id = TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime;
        else if (field_type == NID_X9_62_characteristic_two_field)
            comp_id = TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2;
        else
            return 0;
    }




    if (s->ext.peer_ecpointformats == ((void*)0))
        return 1;

    for (i = 0; i < s->ext.peer_ecpointformats_len; i++) {
        if (s->ext.peer_ecpointformats[i] == comp_id)
            return 1;
    }
    return 0;
}
