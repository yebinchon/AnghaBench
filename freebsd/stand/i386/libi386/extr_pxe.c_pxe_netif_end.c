
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Status; } ;
typedef TYPE_1__ t_PXENV_UNDI_CLOSE ;
struct netif {int dummy; } ;


 int PXENV_UNDI_CLOSE ;
 TYPE_1__* bio_alloc (int) ;
 int bio_free (TYPE_1__*,int) ;
 int bzero (TYPE_1__*,int) ;
 int printf (char*,scalar_t__) ;
 int pxe_call (int ,TYPE_1__*) ;

__attribute__((used)) static void
pxe_netif_end(struct netif *nif)
{
 t_PXENV_UNDI_CLOSE *undi_close_p;

 undi_close_p = bio_alloc(sizeof(*undi_close_p));
 if (undi_close_p != ((void*)0)) {
  bzero(undi_close_p, sizeof(*undi_close_p));
  pxe_call(PXENV_UNDI_CLOSE, undi_close_p);
  if (undi_close_p->Status != 0)
   printf("undi close failed: %x\n", undi_close_p->Status);
  bio_free(undi_close_p, sizeof(*undi_close_p));
 }
}
