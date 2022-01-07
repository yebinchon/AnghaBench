
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_host {struct node_host* next; } ;


 int IFNAMSIZ ;
 int PFI_AFLAG_BROADCAST ;
 int PFI_AFLAG_MODEMASK ;
 int PFI_AFLAG_NETWORK ;
 int PFI_AFLAG_NOALIAS ;
 int PFI_AFLAG_PEER ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 scalar_t__ ifa_exists (char*) ;
 struct node_host* ifa_lookup (char*,int) ;
 int set_ipmask (struct node_host*,int) ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* strdup (char const*) ;
 int strncmp (char*,char*,int ) ;
 char* strrchr (char*,char) ;

struct node_host *
host_if(const char *s, int mask)
{
 struct node_host *n, *h = ((void*)0);
 char *p, *ps;
 int flags = 0;

 if ((ps = strdup(s)) == ((void*)0))
  err(1, "host_if: strdup");
 while ((p = strrchr(ps, ':')) != ((void*)0)) {
  if (!strcmp(p+1, "network"))
   flags |= PFI_AFLAG_NETWORK;
  else if (!strcmp(p+1, "broadcast"))
   flags |= PFI_AFLAG_BROADCAST;
  else if (!strcmp(p+1, "peer"))
   flags |= PFI_AFLAG_PEER;
  else if (!strcmp(p+1, "0"))
   flags |= PFI_AFLAG_NOALIAS;
  else {
   free(ps);
   return (((void*)0));
  }
  *p = '\0';
 }
 if (flags & (flags - 1) & PFI_AFLAG_MODEMASK) {
  fprintf(stderr, "illegal combination of interface modifiers\n");
  free(ps);
  return (((void*)0));
 }
 if ((flags & (PFI_AFLAG_NETWORK|PFI_AFLAG_BROADCAST)) && mask > -1) {
  fprintf(stderr, "network or broadcast lookup, but "
      "extra netmask given\n");
  free(ps);
  return (((void*)0));
 }
 if (ifa_exists(ps) || !strncmp(ps, "self", IFNAMSIZ)) {

  h = ifa_lookup(ps, flags);
  for (n = h; n != ((void*)0) && mask > -1; n = n->next)
   set_ipmask(n, mask);
 }

 free(ps);
 return (h);
}
