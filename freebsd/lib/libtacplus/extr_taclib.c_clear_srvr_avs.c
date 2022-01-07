
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int * srvr_avs; } ;


 int MAXAVPAIRS ;
 int init_srvr_str (int *) ;

__attribute__((used)) static void
clear_srvr_avs(struct tac_handle *h)
{
 int i;
 for (i=0; i<MAXAVPAIRS; i++)
  init_srvr_str(&(h->srvr_avs[i]));
}
