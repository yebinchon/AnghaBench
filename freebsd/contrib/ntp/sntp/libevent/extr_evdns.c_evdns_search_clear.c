
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_base ;
 int evdns_base_search_clear (int ) ;

void
evdns_search_clear(void) {
 evdns_base_search_clear(current_base);
}
