
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; } ;
struct ifg_req {char* ifgrq_group; } ;
struct ifaddrs {int ifa_name; } ;
typedef int ifconfig_handle_t ;


 int err (int,char*) ;
 int free (struct ifg_req*) ;
 scalar_t__ ifconfig_get_groups (int *,int ,struct ifgroupreq*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
print_groups(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 struct ifgroupreq ifgr;
 struct ifg_req *ifg;
 int len;
 int cnt = 0;

 if (ifconfig_get_groups(lifh, ifa->ifa_name, &ifgr) != 0) {
  err(1, "Failed to get groups");
 }

 ifg = ifgr.ifgr_groups;
 len = ifgr.ifgr_len;
 for (; ifg && len >= sizeof(struct ifg_req); ifg++) {
  len -= sizeof(struct ifg_req);
  if (strcmp(ifg->ifgrq_group, "all")) {
   if (cnt == 0) {
    printf("\tgroups: ");
   }
   cnt++;
   printf("%s ", ifg->ifgrq_group);
  }
 }
 if (cnt) {
  printf("\n");
 }

 free(ifgr.ifgr_groups);
}
