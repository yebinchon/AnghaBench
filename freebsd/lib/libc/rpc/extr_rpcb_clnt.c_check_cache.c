
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_cache {int ac_netid; int ac_host; struct address_cache* ac_next; } ;


 int fprintf (int ,char*,char const*,char const*) ;
 struct address_cache* front ;
 int stderr ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct address_cache *
check_cache(const char *host, const char *netid)
{
 struct address_cache *cptr;



 for (cptr = front; cptr != ((void*)0); cptr = cptr->ac_next) {
  if (!strcmp(cptr->ac_host, host) &&
      !strcmp(cptr->ac_netid, netid)) {




   return (cptr);
  }
 }
 return ((struct address_cache *) ((void*)0));
}
