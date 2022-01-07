
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int which ;


 scalar_t__ _substrcmp (char*,char*) ;
 int altq_set_enabled (int) ;
 int sysctlbyname (char*,int *,int ,int*,int) ;
 int warnx (char*,...) ;

void
ipfw_sysctl_handler(char *av[], int which)
{
 av++;

 if (av[0] == ((void*)0)) {
  warnx("missing keyword to enable/disable\n");
 } else if (_substrcmp(*av, "firewall") == 0) {
  sysctlbyname("net.inet.ip.fw.enable", ((void*)0), 0,
      &which, sizeof(which));
  sysctlbyname("net.inet6.ip6.fw.enable", ((void*)0), 0,
      &which, sizeof(which));
 } else if (_substrcmp(*av, "one_pass") == 0) {
  sysctlbyname("net.inet.ip.fw.one_pass", ((void*)0), 0,
      &which, sizeof(which));
 } else if (_substrcmp(*av, "debug") == 0) {
  sysctlbyname("net.inet.ip.fw.debug", ((void*)0), 0,
      &which, sizeof(which));
 } else if (_substrcmp(*av, "verbose") == 0) {
  sysctlbyname("net.inet.ip.fw.verbose", ((void*)0), 0,
      &which, sizeof(which));
 } else if (_substrcmp(*av, "dyn_keepalive") == 0) {
  sysctlbyname("net.inet.ip.fw.dyn_keepalive", ((void*)0), 0,
      &which, sizeof(which));

 } else if (_substrcmp(*av, "altq") == 0) {
  altq_set_enabled(which);

 } else {
  warnx("unrecognize enable/disable keyword: %s\n", *av);
 }
}
