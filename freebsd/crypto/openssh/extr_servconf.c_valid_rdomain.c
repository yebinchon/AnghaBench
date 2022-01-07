
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_tableinfo {int dummy; } ;
typedef int mib ;


 int CTL_NET ;
 int NET_RT_TABLE ;
 int PF_ROUTE ;
 int error (char*) ;
 int memset (int*,int ,int) ;
 long long strtonum (char const*,int ,int,char const**) ;
 int sys_valid_rdomain (char const*) ;
 int sysctl (int*,int,struct rt_tableinfo*,size_t*,int *,int ) ;

__attribute__((used)) static int
valid_rdomain(const char *name)
{
 error("Routing domains are not supported on this platform");
 return 0;

}
