
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t master_key_length; int master_key; } ;
typedef TYPE_1__ SSL_SESSION ;


 int memcpy (int ,unsigned char const*,size_t) ;

int SSL_SESSION_set1_master_key(SSL_SESSION *sess, const unsigned char *in,
                                size_t len)
{
    if (len > sizeof(sess->master_key))
        return 0;

    memcpy(sess->master_key, in, len);
    sess->master_key_length = len;
    return 1;
}
