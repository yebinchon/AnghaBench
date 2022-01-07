
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct node_host {TYPE_1__* tail; } ;
struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int ifgr_name; } ;
struct ifg_req {int ifgrq_member; } ;
typedef int ifgr ;
typedef int caddr_t ;
struct TYPE_2__ {struct node_host* next; } ;


 int SIOCGIFGMEMB ;
 int bzero (struct ifgroupreq*,int) ;
 struct ifg_req* calloc (int,int) ;
 int err (int,char*) ;
 int free (struct ifg_req*) ;
 int get_query_socket () ;
 struct node_host* ifa_lookup (int ,int) ;
 int ioctl (int,int ,int ) ;
 int is_a_group (char*) ;
 int strlcpy (int ,char*,int) ;

struct node_host *
ifa_grouplookup(char *ifa_name, int flags)
{
 struct ifg_req *ifg;
 struct ifgroupreq ifgr;
 int s, len;
 struct node_host *n, *h = ((void*)0);

 s = get_query_socket();
 len = is_a_group(ifa_name);
 if (len == 0)
  return (((void*)0));
 bzero(&ifgr, sizeof(ifgr));
 strlcpy(ifgr.ifgr_name, ifa_name, sizeof(ifgr.ifgr_name));
 ifgr.ifgr_len = len;
 if ((ifgr.ifgr_groups = calloc(1, len)) == ((void*)0))
  err(1, "calloc");
 if (ioctl(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1)
  err(1, "SIOCGIFGMEMB");

 for (ifg = ifgr.ifgr_groups; ifg && len >= sizeof(struct ifg_req);
     ifg++) {
  len -= sizeof(struct ifg_req);
  if ((n = ifa_lookup(ifg->ifgrq_member, flags)) == ((void*)0))
   continue;
  if (h == ((void*)0))
   h = n;
  else {
   h->tail->next = n;
   h->tail = n->tail;
  }
 }
 free(ifgr.ifgr_groups);

 return (h);
}
