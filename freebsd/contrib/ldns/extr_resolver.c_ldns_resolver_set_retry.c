
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int _retry; } ;
typedef TYPE_1__ ldns_resolver ;



void
ldns_resolver_set_retry(ldns_resolver *r, uint8_t retry)
{
 r->_retry = retry;
}
