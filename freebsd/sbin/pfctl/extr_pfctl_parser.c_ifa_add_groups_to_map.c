
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int ifgr_name; } ;
struct ifg_req {char* ifgrq_group; } ;
typedef int ifgr2 ;
typedef int ifgr ;
typedef int caddr_t ;
struct TYPE_4__ {char* key; int* data; } ;
typedef TYPE_1__ ENTRY ;


 int ENTER ;
 int FIND ;
 int IFNAMSIZ ;
 int SIOCGIFGMEMB ;
 int SIOCGIFGROUP ;
 int bzero (struct ifgroupreq*,int) ;
 scalar_t__ calloc (int,int) ;
 int err (int,char*) ;
 int free (struct ifg_req*) ;
 int get_query_socket () ;
 scalar_t__ hsearch_r (TYPE_1__,int ,TYPE_1__**,int *) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int isgroup_map ;
 int* malloc (int) ;
 int memset (struct ifgroupreq*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
ifa_add_groups_to_map(char *ifa_name)
{
 int s, len;
 struct ifgroupreq ifgr;
 struct ifg_req *ifg;

 s = get_query_socket();


 memset(&ifgr, 0, sizeof(ifgr));
 strlcpy(ifgr.ifgr_name, ifa_name, IFNAMSIZ);
 if (ioctl(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1)
  err(1, "SIOCGIFGROUP");


 len = ifgr.ifgr_len;
 ifgr.ifgr_groups =
     (struct ifg_req *)calloc(len / sizeof(struct ifg_req),
  sizeof(struct ifg_req));
 if (ifgr.ifgr_groups == ((void*)0))
  err(1, "calloc");
 if (ioctl(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1)
  err(1, "SIOCGIFGROUP");

 ifg = ifgr.ifgr_groups;
 for (; ifg && len >= sizeof(struct ifg_req); ifg++) {
  len -= sizeof(struct ifg_req);
  if (strcmp(ifg->ifgrq_group, "all")) {
   ENTRY item;
   ENTRY *ret_item;
   int *answer;

   item.key = ifg->ifgrq_group;
   if (hsearch_r(item, FIND, &ret_item, &isgroup_map) == 0) {
    struct ifgroupreq ifgr2;


    if ((answer = malloc(sizeof(int))) == ((void*)0))
     err(1, "malloc");

    bzero(&ifgr2, sizeof(ifgr2));
    strlcpy(ifgr2.ifgr_name, ifg->ifgrq_group,
        sizeof(ifgr2.ifgr_name));
    if (ioctl(s, SIOCGIFGMEMB, (caddr_t)&ifgr2) == 0)
     *answer = ifgr2.ifgr_len;
    else
     *answer = 0;

    item.key = strdup(ifg->ifgrq_group);
    item.data = answer;
    if (hsearch_r(item, ENTER, &ret_item,
     &isgroup_map) == 0)
     err(1, "interface group query response"
         " map insert");
   }
  }
 }
 free(ifgr.ifgr_groups);
}
