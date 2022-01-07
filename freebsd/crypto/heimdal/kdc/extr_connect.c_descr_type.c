
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descr {scalar_t__ type; } ;


 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;

__attribute__((used)) static const char *
descr_type(struct descr *d)
{
    if (d->type == SOCK_DGRAM)
 return "udp";
    else if (d->type == SOCK_STREAM)
 return "tcp";
    return "unknown";
}
