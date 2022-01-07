
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 unsigned long TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 ;
 unsigned long TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 ;
 int TLSEXT_curve_P_256 ;
 int TLSEXT_curve_P_384 ;
 int tls1_check_group_id (int *,int ,int) ;
 scalar_t__ tls1_shared_group (int *,int ) ;
 int tls1_suiteb (int *) ;

int tls1_check_ec_tmp_key(SSL *s, unsigned long cid)
{

    if (!tls1_suiteb(s))
        return tls1_shared_group(s, 0) != 0;




    if (cid == TLS1_CK_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256)
        return tls1_check_group_id(s, TLSEXT_curve_P_256, 1);
    if (cid == TLS1_CK_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384)
        return tls1_check_group_id(s, TLSEXT_curve_P_384, 1);

    return 0;
}
