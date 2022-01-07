
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_4__ {int tv_usec; int tv_sec; } ;
struct TYPE_5__ {TYPE_1__ _timeout; } ;
typedef TYPE_2__ ldns_resolver ;



void
ldns_resolver_set_timeout(ldns_resolver *r, struct timeval timeout)
{
 r->_timeout.tv_sec = timeout.tv_sec;
 r->_timeout.tv_usec = timeout.tv_usec;
}
