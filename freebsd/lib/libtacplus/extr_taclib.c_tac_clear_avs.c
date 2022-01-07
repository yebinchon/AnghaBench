
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int * avs; } ;


 int MAXAVPAIRS ;
 int save_str (struct tac_handle*,int *,int *,int ) ;

void
tac_clear_avs(struct tac_handle *h)
{
 int i;
 for (i=0; i<MAXAVPAIRS; i++)
  save_str(h, &(h->avs[i]), ((void*)0), 0);
}
