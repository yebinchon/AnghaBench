
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rstate; } ;
struct TYPE_5__ {TYPE_1__ rlayer; } ;
typedef TYPE_2__ SSL ;






const char *SSL_rstate_string(const SSL *s)
{
    switch (s->rlayer.rstate) {
    case 128:
        return "RH";
    case 130:
        return "RB";
    case 129:
        return "RD";
    default:
        return "unknown";
    }
}
