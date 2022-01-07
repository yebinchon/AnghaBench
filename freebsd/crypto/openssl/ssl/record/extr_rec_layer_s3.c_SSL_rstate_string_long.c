
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rstate; } ;
struct TYPE_5__ {TYPE_1__ rlayer; } ;
typedef TYPE_2__ SSL ;






const char *SSL_rstate_string_long(const SSL *s)
{
    switch (s->rlayer.rstate) {
    case 128:
        return "read header";
    case 130:
        return "read body";
    case 129:
        return "read done";
    default:
        return "unknown";
    }
}
