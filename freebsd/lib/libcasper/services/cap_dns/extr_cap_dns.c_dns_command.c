
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int NO_RECOVERY ;
 int dns_getaddrinfo (int const*,int *,int *) ;
 int dns_gethostbyaddr (int const*,int *,int *) ;
 int dns_gethostbyname (int const*,int *,int *) ;
 int dns_getnameinfo (int const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
dns_command(const char *cmd, const nvlist_t *limits, nvlist_t *nvlin,
    nvlist_t *nvlout)
{
 int error;

 if (strcmp(cmd, "gethostbyname") == 0)
  error = dns_gethostbyname(limits, nvlin, nvlout);
 else if (strcmp(cmd, "gethostbyaddr") == 0)
  error = dns_gethostbyaddr(limits, nvlin, nvlout);
 else if (strcmp(cmd, "getnameinfo") == 0)
  error = dns_getnameinfo(limits, nvlin, nvlout);
 else if (strcmp(cmd, "getaddrinfo") == 0)
  error = dns_getaddrinfo(limits, nvlin, nvlout);
 else
  error = NO_RECOVERY;

 return (error);
}
