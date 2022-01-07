
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int options; } ;
typedef TYPE_1__ filegen_node ;
typedef TYPE_1__ filegen_fifo ;


 int UNLINK_FIFO (TYPE_1__*,TYPE_1__,int ) ;
 int destroy_attr_val_fifo (int ) ;
 int free (TYPE_1__*) ;
 int link ;

__attribute__((used)) static void
destroy_filegen_fifo(
 filegen_fifo * fifo
 )
{
 filegen_node * fg;

 if (fifo != ((void*)0)) {
  for (;;) {
   UNLINK_FIFO(fg, *fifo, link);
   if (fg == ((void*)0))
    break;
   destroy_attr_val_fifo(fg->options);
   free(fg);
  }
  free(fifo);
 }
}
