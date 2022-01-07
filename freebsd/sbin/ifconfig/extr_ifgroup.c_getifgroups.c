
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int ifgr_name; } ;
struct ifg_req {char* ifgrq_group; } ;
typedef int ifgr ;
typedef int caddr_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOTTY ;
 int IFNAMSIZ ;
 int SIOCGIFGROUP ;
 scalar_t__ calloc (int,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int free (struct ifg_req*) ;
 int ioctl (int,int ,int ) ;
 int memset (struct ifgroupreq*,int ,int) ;
 int name ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,int ,int ) ;

__attribute__((used)) static void
getifgroups(int s)
{
 int len, cnt;
 struct ifgroupreq ifgr;
 struct ifg_req *ifg;

 memset(&ifgr, 0, sizeof(ifgr));
 strlcpy(ifgr.ifgr_name, name, IFNAMSIZ);

 if (ioctl(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1) {
  if (errno == EINVAL || errno == ENOTTY)
   return;
  else
   err(1, "SIOCGIFGROUP");
 }

 len = ifgr.ifgr_len;
 ifgr.ifgr_groups =
     (struct ifg_req *)calloc(len / sizeof(struct ifg_req),
     sizeof(struct ifg_req));
 if (ifgr.ifgr_groups == ((void*)0))
  err(1, "getifgroups");
 if (ioctl(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1)
  err(1, "SIOCGIFGROUP");

 cnt = 0;
 ifg = ifgr.ifgr_groups;
 for (; ifg && len >= sizeof(struct ifg_req); ifg++) {
  len -= sizeof(struct ifg_req);
  if (strcmp(ifg->ifgrq_group, "all")) {
   if (cnt == 0)
    printf("\tgroups:");
   cnt++;
   printf(" %s", ifg->ifgrq_group);
  }
 }
 if (cnt)
  printf("\n");

 free(ifgr.ifgr_groups);
}
