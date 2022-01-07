
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int options; int addr; } ;
typedef TYPE_1__ addr_opts_node ;
typedef TYPE_1__ addr_opts_fifo ;


 int UNLINK_FIFO (TYPE_1__*,TYPE_1__,int ) ;
 int destroy_address_node (int ) ;
 int destroy_attr_val_fifo (int ) ;
 int free (TYPE_1__*) ;
 int link ;

__attribute__((used)) static void
destroy_addr_opts_fifo(
 addr_opts_fifo * fifo
 )
{
 addr_opts_node * aon;

 if (fifo != ((void*)0)) {
  for (;;) {
   UNLINK_FIFO(aon, *fifo, link);
   if (aon == ((void*)0))
    break;
   destroy_address_node(aon->addr);
   destroy_attr_val_fifo(aon->options);
   free(aon);
  }
  free(fifo);
 }
}
