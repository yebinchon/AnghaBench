
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ SSL_CIPHER ;



uint16_t SSL_CIPHER_get_protocol_id(const SSL_CIPHER *c)
{
    return c->id & 0xFFFF;
}
