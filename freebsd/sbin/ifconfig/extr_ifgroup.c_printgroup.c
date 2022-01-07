
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int ifgr_name; } ;
struct ifg_req {char* ifgrq_member; } ;
typedef int ifgr ;
typedef int caddr_t ;


 int AF_LOCAL ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTTY ;
 int SIOCGIFGMEMB ;
 int SOCK_DGRAM ;
 int bzero (struct ifgroupreq*,int) ;
 struct ifg_req* calloc (int,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int exit_code ;
 int free (struct ifg_req*) ;
 int ioctl (int,int ,int ) ;
 int printf (char*,char*) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
printgroup(const char *groupname)
{
 struct ifgroupreq ifgr;
 struct ifg_req *ifg;
 int len, cnt = 0;
 int s;

 s = socket(AF_LOCAL, SOCK_DGRAM, 0);
 if (s == -1)
  err(1, "socket(AF_LOCAL,SOCK_DGRAM)");
 bzero(&ifgr, sizeof(ifgr));
 strlcpy(ifgr.ifgr_name, groupname, sizeof(ifgr.ifgr_name));
 if (ioctl(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1) {
  if (errno == EINVAL || errno == ENOTTY ||
      errno == ENOENT)
   exit(exit_code);
  else
   err(1, "SIOCGIFGMEMB");
 }

 len = ifgr.ifgr_len;
 if ((ifgr.ifgr_groups = calloc(1, len)) == ((void*)0))
  err(1, "printgroup");
 if (ioctl(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1)
  err(1, "SIOCGIFGMEMB");

 for (ifg = ifgr.ifgr_groups; ifg && len >= sizeof(struct ifg_req);
     ifg++) {
  len -= sizeof(struct ifg_req);
  printf("%s\n", ifg->ifgrq_member);
  cnt++;
 }
 free(ifgr.ifgr_groups);

 exit(exit_code);
}
