
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pfctl {int hostid_set; int opts; int hostid; } ;


 int HTONL (int ) ;
 int PFCTL_FLAG_OPTION ;
 int PF_OPT_VERBOSE ;
 int loadopt ;
 int ntohl (int ) ;
 int printf (char*,int) ;

int
pfctl_set_hostid(struct pfctl *pf, u_int32_t hostid)
{
 if ((loadopt & PFCTL_FLAG_OPTION) == 0)
  return (0);

 HTONL(hostid);

 pf->hostid = hostid;
 pf->hostid_set = 1;

 if (pf->opts & PF_OPT_VERBOSE)
  printf("set hostid 0x%08x\n", ntohl(hostid));

 return (0);
}
