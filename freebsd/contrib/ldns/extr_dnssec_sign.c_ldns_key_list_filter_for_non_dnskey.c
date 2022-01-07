
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ldns_signing_algorithm ;
typedef int ldns_key_list ;
typedef int ldns_key ;


 int LDNS_KEY_SEP_KEY ;
 int LDNS_SIGN_WITH_ALL_ALGORITHMS ;
 size_t ldns_key_algorithm (int *) ;
 int ldns_key_flags (int *) ;
 int * ldns_key_list_key (int *,size_t) ;
 size_t ldns_key_list_key_count (int *) ;
 int ldns_key_set_use (int *,int ) ;

__attribute__((used)) static void
ldns_key_list_filter_for_non_dnskey(ldns_key_list *key_list, int flags)
{
 bool algos[256]

                 = { 0 }

                            ;
 ldns_signing_algorithm saw_zsk = 0;
 ldns_key *key;
 size_t i;

 if (!ldns_key_list_key_count(key_list))
  return;

 for (i = 0; i < ldns_key_list_key_count(key_list); i++) {
  key = ldns_key_list_key(key_list, i);
  if (!(ldns_key_flags(key) & LDNS_KEY_SEP_KEY) && !saw_zsk)
   saw_zsk = ldns_key_algorithm(key);
  algos[ldns_key_algorithm(key)] = 1;
 }
 if (!saw_zsk)
  return;
 else
  algos[saw_zsk] = 0;

 for (i = 0; i < ldns_key_list_key_count(key_list); i++) {
  key = ldns_key_list_key(key_list, i);
  if((ldns_key_flags(key) & LDNS_KEY_SEP_KEY)) {



   if ((flags & LDNS_SIGN_WITH_ALL_ALGORITHMS) &&
       algos[ldns_key_algorithm(key)])
    algos[ldns_key_algorithm(key)] = 0;
   else
    ldns_key_set_use(key, 0);
  }
 }
}
