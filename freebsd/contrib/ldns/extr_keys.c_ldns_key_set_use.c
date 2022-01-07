
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _use; } ;
typedef TYPE_1__ ldns_key ;



void
ldns_key_set_use(ldns_key *k, bool v)
{
 if (k) {
  k->_use = v;
 }
}
