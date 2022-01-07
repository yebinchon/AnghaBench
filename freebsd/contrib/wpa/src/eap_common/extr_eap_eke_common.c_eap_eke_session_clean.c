
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_eke_session {int ka; int ki; int ke; int shared_secret; } ;


 int EAP_EKE_MAX_HASH_LEN ;
 int EAP_EKE_MAX_KA_LEN ;
 int EAP_EKE_MAX_KE_LEN ;
 int EAP_EKE_MAX_KI_LEN ;
 int os_memset (int ,int ,int ) ;

void eap_eke_session_clean(struct eap_eke_session *sess)
{
 os_memset(sess->shared_secret, 0, EAP_EKE_MAX_HASH_LEN);
 os_memset(sess->ke, 0, EAP_EKE_MAX_KE_LEN);
 os_memset(sess->ki, 0, EAP_EKE_MAX_KI_LEN);
 os_memset(sess->ka, 0, EAP_EKE_MAX_KA_LEN);
}
