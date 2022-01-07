
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* val; struct TYPE_7__* var; } ;
typedef TYPE_1__ setvar_node ;
typedef TYPE_1__ setvar_fifo ;


 int UNLINK_FIFO (TYPE_1__*,TYPE_1__,int ) ;
 int free (TYPE_1__*) ;
 int link ;

__attribute__((used)) static void
destroy_setvar_fifo(
 setvar_fifo * fifo
 )
{
 setvar_node * sv;

 if (fifo != ((void*)0)) {
  for (;;) {
   UNLINK_FIFO(sv, *fifo, link);
   if (sv == ((void*)0))
    break;
   free(sv->var);
   free(sv->val);
   free(sv);
  }
  free(fifo);
 }
}
