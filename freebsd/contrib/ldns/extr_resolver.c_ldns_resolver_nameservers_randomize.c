
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;


 int assert (int ) ;
 size_t ldns_get_random () ;
 size_t ldns_resolver_nameserver_count (int *) ;
 int ** ldns_resolver_nameservers (int *) ;
 size_t* ldns_resolver_rtt (int *) ;
 int ldns_resolver_set_nameservers (int *,int **) ;

void
ldns_resolver_nameservers_randomize(ldns_resolver *r)
{
 uint16_t i, j;
 ldns_rdf **ns, *tmpns;
 size_t *rtt, tmprtt;


 assert(r != ((void*)0));

 ns = ldns_resolver_nameservers(r);
 rtt = ldns_resolver_rtt(r);
 for (i = 0; i < ldns_resolver_nameserver_count(r); i++) {
  j = ldns_get_random() % ldns_resolver_nameserver_count(r);
  tmpns = ns[i];
  ns[i] = ns[j];
  ns[j] = tmpns;
  tmprtt = rtt[i];
  rtt[i] = rtt[j];
  rtt[j] = tmprtt;
 }
 ldns_resolver_set_nameservers(r, ns);
}
