
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_cert_list; } ;
typedef TYPE_1__ SSL ;


 size_t DTLS1_HM_HEADER_LENGTH ;
 size_t SSL3_RT_MAX_ENCRYPTED_LENGTH ;

__attribute__((used)) static size_t dtls1_max_handshake_message_len(const SSL *s)
{
    size_t max_len = DTLS1_HM_HEADER_LENGTH + SSL3_RT_MAX_ENCRYPTED_LENGTH;
    if (max_len < s->max_cert_list)
        return s->max_cert_list;
    return max_len;
}
