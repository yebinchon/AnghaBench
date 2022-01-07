
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_lst {unsigned char* var; unsigned char* value; int export; int welldefined; struct env_lst* prev; struct env_lst* next; } ;


 struct env_lst* env_find (unsigned char*) ;
 struct env_lst envlisthead ;
 int free (unsigned char*) ;
 scalar_t__ malloc (int) ;
 int opt_welldefined (char*) ;
 scalar_t__ strdup (char*) ;

struct env_lst *
env_define(unsigned char *var, unsigned char *value)
{
 struct env_lst *ep;

 if ((ep = env_find(var))) {
  if (ep->var)
   free(ep->var);
  if (ep->value)
   free(ep->value);
 } else {
  ep = (struct env_lst *)malloc(sizeof(struct env_lst));
  ep->next = envlisthead.next;
  envlisthead.next = ep;
  ep->prev = &envlisthead;
  if (ep->next)
   ep->next->prev = ep;
 }
 ep->welldefined = opt_welldefined((char *)var);
 ep->export = 1;
 ep->var = (unsigned char *)strdup((char *)var);
 ep->value = (unsigned char *)strdup((char *)value);
 return(ep);
}
