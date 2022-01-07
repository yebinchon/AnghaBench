
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct tac_handle {int * avs; } ;


 size_t MAXAVPAIRS ;
 int save_str (struct tac_handle*,int *,char const*,int ) ;
 int strlen (char const*) ;

int
tac_set_av(struct tac_handle *h, u_int index, const char *av)
{
 if (index >= MAXAVPAIRS)
  return -1;
 return save_str(h, &(h->avs[index]), av, av != ((void*)0) ? strlen(av) : 0);
}
