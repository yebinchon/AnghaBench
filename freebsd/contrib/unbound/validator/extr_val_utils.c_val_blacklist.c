
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_list {struct sock_list* next; } ;
struct regional {int dummy; } ;


 scalar_t__ VERB_ALGO ;
 int sock_list_insert (struct sock_list**,int *,int ,struct regional*) ;
 int sock_list_logentry (scalar_t__,char*,struct sock_list*) ;
 int sock_list_merge (struct sock_list**,struct regional*,struct sock_list*) ;
 int sock_list_prepend (struct sock_list**,struct sock_list*) ;
 int verbose (scalar_t__,char*) ;
 scalar_t__ verbosity ;

void val_blacklist(struct sock_list** blacklist, struct regional* region,
 struct sock_list* origin, int cross)
{

 if(verbosity >= VERB_ALGO) {
  struct sock_list* p;
  for(p=*blacklist; p; p=p->next)
   sock_list_logentry(VERB_ALGO, "blacklist", p);
  if(!origin)
   verbose(VERB_ALGO, "blacklist add: cache");
  for(p=origin; p; p=p->next)
   sock_list_logentry(VERB_ALGO, "blacklist add", p);
 }

 if(!origin) {

  if(!*blacklist)
   sock_list_insert(blacklist, ((void*)0), 0, region);
 } else if(!cross)
  sock_list_prepend(blacklist, origin);
 else sock_list_merge(blacklist, region, origin);
}
