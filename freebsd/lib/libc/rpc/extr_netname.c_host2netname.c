
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hostname ;


 int MAXHOSTNAMELEN ;
 scalar_t__ MAXNETNAMELEN ;
 char* OPSYS ;
 scalar_t__ __rpc_get_default_domain (char**) ;
 int gethostname (char*,int) ;
 int sprintf (char*,char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

int
host2netname(char netname[MAXNETNAMELEN + 1], const char *host, const char *domain)
{
 char *dfltdom;
 char hostname[MAXHOSTNAMELEN+1];

 if (domain == ((void*)0)) {
  if (__rpc_get_default_domain(&dfltdom) != 0) {
   return (0);
  }
  domain = dfltdom;
 }
 if (host == ((void*)0)) {
  (void) gethostname(hostname, sizeof(hostname));
  host = hostname;
 }
 if (strlen(domain) + 1 + strlen(host) + 1 + strlen(OPSYS) > MAXNETNAMELEN) {
  return (0);
 }
 (void) sprintf(netname, "%s.%s@%s", OPSYS, host, domain);
 return (1);
}
