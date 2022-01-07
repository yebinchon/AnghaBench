
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* s3; } ;
struct TYPE_4__ {unsigned char* alpn_selected; scalar_t__ alpn_selected_len; } ;
typedef TYPE_2__ SSL ;



void SSL_get0_alpn_selected(const SSL *ssl, const unsigned char **data,
                            unsigned int *len)
{
    *data = ((void*)0);
    if (ssl->s3)
        *data = ssl->s3->alpn_selected;
    if (*data == ((void*)0))
        *len = 0;
    else
        *len = (unsigned int)ssl->s3->alpn_selected_len;
}
