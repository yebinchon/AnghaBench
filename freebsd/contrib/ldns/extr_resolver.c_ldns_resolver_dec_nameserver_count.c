
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;


 size_t ldns_resolver_nameserver_count (int *) ;
 int ldns_resolver_set_nameserver_count (int *,size_t) ;

void
ldns_resolver_dec_nameserver_count(ldns_resolver *r)
{
 size_t c;

 c = ldns_resolver_nameserver_count(r);
 if (c == 0) {
  return;
 } else {
  ldns_resolver_set_nameserver_count(r, --c);
 }
}
