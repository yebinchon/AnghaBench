
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int CTL_KERN ;
 int KERN_HOSTNAME ;
 int atf_tc_fail_errno (char*) ;
 int rump_sys___sysctl (int*,int,char*,size_t*,int *,int ) ;

__attribute__((used)) static char *
getthehost(void)
{
 static char buf[8192];
 int mib[2];
 size_t blen;

 mib[0] = CTL_KERN;
 mib[1] = KERN_HOSTNAME;
 blen = sizeof(buf);
 if (rump_sys___sysctl(mib, 2, buf, &blen, ((void*)0), 0) == -1)
  atf_tc_fail_errno("sysctl gethostname");

 return buf;
}
