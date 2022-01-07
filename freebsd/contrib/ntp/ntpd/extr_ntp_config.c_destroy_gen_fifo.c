
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* fifo_deleter ) (int *) ;
typedef int any_node_fifo ;
typedef int any_node ;


 int UNLINK_FIFO (int *,int ,int ) ;
 int free (int *) ;
 int link ;
 int stub1 (int *) ;

void*
destroy_gen_fifo(
 void *fifo,
 fifo_deleter func
 )
{
 any_node * np = ((void*)0);
 any_node_fifo * pf1 = fifo;

 if (pf1 != ((void*)0)) {
  if (!func)
   func = free;
  for (;;) {
   UNLINK_FIFO(np, *pf1, link);
   if (np == ((void*)0))
    break;
   (*func)(np);
  }
  free(pf1);
 }
 return ((void*)0);
}
