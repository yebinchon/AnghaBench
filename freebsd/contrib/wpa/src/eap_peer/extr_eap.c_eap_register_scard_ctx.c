
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {void* scard_ctx; } ;



void eap_register_scard_ctx(struct eap_sm *sm, void *ctx)
{
 if (sm)
  sm->scard_ctx = ctx;
}
