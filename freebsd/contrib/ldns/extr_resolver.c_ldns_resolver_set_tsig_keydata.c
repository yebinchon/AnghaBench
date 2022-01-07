
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _tsig_keydata; } ;
typedef TYPE_1__ ldns_resolver ;


 int LDNS_FREE (int ) ;
 int strdup (char const*) ;

void
ldns_resolver_set_tsig_keydata(ldns_resolver *r, const char *tsig_keydata)
{
 LDNS_FREE(r->_tsig_keydata);
 r->_tsig_keydata = strdup(tsig_keydata);
}
