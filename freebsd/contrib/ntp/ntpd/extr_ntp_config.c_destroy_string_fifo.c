
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* s; } ;
typedef TYPE_1__ string_node ;
typedef TYPE_1__ string_fifo ;


 int UNLINK_FIFO (TYPE_1__*,TYPE_1__,int ) ;
 int free (TYPE_1__*) ;
 int link ;

__attribute__((used)) static void
destroy_string_fifo(
 string_fifo * fifo
 )
{
 string_node * sn;

 if (fifo != ((void*)0)) {
  for (;;) {
   UNLINK_FIFO(sn, *fifo, link);
   if (sn == ((void*)0))
    break;
   free(sn->s);
   free(sn);
  }
  free(fifo);
 }
}
