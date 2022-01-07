
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ CLIENT ;


 TYPE_1__* Clients ;
 int FreeClient (TYPE_1__*) ;

void
FreeClients(void)
{
 CLIENT *ctmp;

 while (Clients != ((void*)0)) {
  ctmp = Clients;
  Clients = Clients->next;
  FreeClient(ctmp);
 }
}
