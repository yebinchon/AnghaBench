
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int attr_val_fifo ;
typedef int attr_val ;


 int UNLINK_FIFO (int *,int ,int ) ;
 int destroy_attr_val (int *) ;
 int free (int *) ;
 int link ;

__attribute__((used)) static void
destroy_attr_val_fifo(
 attr_val_fifo * av_fifo
 )
{
 attr_val * av;

 if (av_fifo != ((void*)0)) {
  for (;;) {
   UNLINK_FIFO(av, *av_fifo, link);
   if (av == ((void*)0))
    break;
   destroy_attr_val(av);
  }
  free(av_fifo);
 }
}
