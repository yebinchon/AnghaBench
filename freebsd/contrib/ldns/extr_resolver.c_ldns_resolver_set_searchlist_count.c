
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _searchlist_count; } ;
typedef TYPE_1__ ldns_resolver ;



__attribute__((used)) static void
ldns_resolver_set_searchlist_count(ldns_resolver *r, size_t c)
{
 r->_searchlist_count = c;
}
