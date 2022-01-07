
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _tsig_keyname; } ;
typedef TYPE_1__ ldns_resolver ;


 int LDNS_FREE (int ) ;
 int strdup (char const*) ;

void
ldns_resolver_set_tsig_keyname(ldns_resolver *r, const char *tsig_keyname)
{
 LDNS_FREE(r->_tsig_keyname);
 r->_tsig_keyname = strdup(tsig_keyname);
}
