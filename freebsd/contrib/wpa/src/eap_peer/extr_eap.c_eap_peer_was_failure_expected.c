
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int expected_failure; } ;



int eap_peer_was_failure_expected(struct eap_sm *sm)
{
 return sm->expected_failure;
}
