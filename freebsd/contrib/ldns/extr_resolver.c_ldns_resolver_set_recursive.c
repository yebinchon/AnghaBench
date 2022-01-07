
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _recursive; } ;
typedef TYPE_1__ ldns_resolver ;



void
ldns_resolver_set_recursive(ldns_resolver *r, bool re)
{
 r->_recursive = re;
}
