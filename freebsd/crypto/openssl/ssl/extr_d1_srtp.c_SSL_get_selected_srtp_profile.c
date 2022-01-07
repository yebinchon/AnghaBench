
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * srtp_profile; } ;
typedef TYPE_1__ SSL ;
typedef int SRTP_PROTECTION_PROFILE ;



SRTP_PROTECTION_PROFILE *SSL_get_selected_srtp_profile(SSL *s)
{
    return s->srtp_profile;
}
