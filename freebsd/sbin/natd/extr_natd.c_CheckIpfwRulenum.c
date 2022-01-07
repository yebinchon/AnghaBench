
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int default_rule ;


 int sysctlbyname (char*,unsigned int*,size_t*,int *,int ) ;
 int warn (char*) ;

__attribute__((used)) static int
CheckIpfwRulenum(unsigned int rnum)
{
 unsigned int default_rule;
 size_t len = sizeof(default_rule);

 if (sysctlbyname("net.inet.ip.fw.default_rule", &default_rule, &len,
  ((void*)0), 0) == -1) {
  warn("Failed to get the default ipfw rule number, using "
       "default historical value 65535.  The reason was");
  default_rule = 65535;
 }
 if (rnum >= default_rule) {
  return -1;
 }

 return 0;
}
