
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;


 int LDNS_FREE (size_t*) ;
 size_t* ldns_resolver_rtt (int *) ;
 int ldns_resolver_set_rtt (int *,size_t*) ;

__attribute__((used)) static void
ldns_resolver_restore_rtt(ldns_resolver *r, size_t *old_rtt)
{
 size_t *cur_rtt = ldns_resolver_rtt(r);

 if (cur_rtt) {
  LDNS_FREE(cur_rtt);
 }
 ldns_resolver_set_rtt(r, old_rtt);
}
