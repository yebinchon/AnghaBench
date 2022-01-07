
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_3__ {struct timeval _timeout; } ;
typedef TYPE_1__ ldns_resolver ;



struct timeval
ldns_resolver_timeout(const ldns_resolver *r)
{
 return r->_timeout;
}
