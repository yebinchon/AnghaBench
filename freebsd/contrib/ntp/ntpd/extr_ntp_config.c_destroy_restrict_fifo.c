
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int restrict_node ;
typedef int restrict_fifo ;


 int UNLINK_FIFO (int *,int ,int ) ;
 int destroy_restrict_node (int *) ;
 int free (int *) ;
 int link ;

__attribute__((used)) static void
destroy_restrict_fifo(
 restrict_fifo * fifo
 )
{
 restrict_node * rn;

 if (fifo != ((void*)0)) {
  for (;;) {
   UNLINK_FIFO(rn, *fifo, link);
   if (rn == ((void*)0))
    break;
   destroy_restrict_node(rn);
  }
  free(fifo);
 }
}
