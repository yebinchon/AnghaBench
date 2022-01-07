
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_node ;
typedef int int_fifo ;


 int UNLINK_FIFO (int *,int ,int ) ;
 int free (int *) ;
 int link ;

__attribute__((used)) static void
destroy_int_fifo(
 int_fifo * fifo
 )
{
 int_node * i_n;

 if (fifo != ((void*)0)) {
  for (;;) {
   UNLINK_FIFO(i_n, *fifo, link);
   if (i_n == ((void*)0))
    break;
   free(i_n);
  }
  free(fifo);
 }
}
