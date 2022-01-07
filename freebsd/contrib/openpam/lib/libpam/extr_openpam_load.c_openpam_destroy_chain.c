
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * module; int optv; int optc; struct TYPE_4__* next; } ;
typedef TYPE_1__ pam_chain_t ;


 int FREE (TYPE_1__*) ;
 int FREEV (int ,int ) ;
 int openpam_release_module (int *) ;

__attribute__((used)) static void
openpam_destroy_chain(pam_chain_t *chain)
{

 if (chain == ((void*)0))
  return;
 openpam_destroy_chain(chain->next);
 chain->next = ((void*)0);
 FREEV(chain->optc, chain->optv);
 openpam_release_module(chain->module);
 chain->module = ((void*)0);
 FREE(chain);
}
