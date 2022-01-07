
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_lst {int welldefined; unsigned char* var; scalar_t__ export; struct env_lst* next; } ;


 struct env_lst envlisthead ;

unsigned char *
env_default(int init, int welldefined)
{
 static struct env_lst *nep = ((void*)0);

 if (init) {
  nep = &envlisthead;
  return(((void*)0));
 }
 if (nep) {
  while ((nep = nep->next)) {
   if (nep->export && (nep->welldefined == welldefined))
    return(nep->var);
  }
 }
 return(((void*)0));
}
