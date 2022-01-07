
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct tac_handle {int * srvr_avs; } ;


 size_t MAXAVPAIRS ;
 char* dup_str (struct tac_handle*,int *,int *) ;

char *
tac_get_av(struct tac_handle *h, u_int index)
{
 if (index >= MAXAVPAIRS)
  return ((void*)0);
 return dup_str(h, &(h->srvr_avs[index]), ((void*)0));
}
