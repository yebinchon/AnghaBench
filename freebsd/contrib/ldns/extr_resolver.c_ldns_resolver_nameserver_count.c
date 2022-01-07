
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _nameserver_count; } ;
typedef TYPE_1__ ldns_resolver ;



size_t
ldns_resolver_nameserver_count(const ldns_resolver *r)
{
 return r->_nameserver_count;
}
