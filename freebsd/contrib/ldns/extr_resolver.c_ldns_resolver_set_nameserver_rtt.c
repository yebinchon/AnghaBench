
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;


 int assert (int ) ;
 size_t ldns_resolver_nameserver_count (int *) ;
 size_t* ldns_resolver_rtt (int *) ;

void
ldns_resolver_set_nameserver_rtt(ldns_resolver *r, size_t pos, size_t value)
{
 size_t *rtt;

 assert(r != ((void*)0));

 rtt = ldns_resolver_rtt(r);

 if (pos >= ldns_resolver_nameserver_count(r)) {

 } else {
  rtt[pos] = value;
 }

}
