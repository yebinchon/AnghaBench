
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int AF_INET6 ;
 int EX_OSERR ;
 int EX_USAGE ;
 int err (int ,int *) ;
 int errx (int ,char*,char const*) ;
 int free (char*) ;
 int inet_pton (int ,char*,struct in6_addr*) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static void
nptv6_parse_prefix(const char *arg, struct in6_addr *prefix, int *len)
{
 char *p, *l;

 p = strdup(arg);
 if (p == ((void*)0))
  err(EX_OSERR, ((void*)0));
 if ((l = strchr(p, '/')) != ((void*)0))
  *l++ = '\0';
 if (inet_pton(AF_INET6, p, prefix) != 1)
  errx(EX_USAGE, "Bad prefix: %s", p);
 if (l != ((void*)0)) {
  *len = (int)strtol(l, &l, 10);
  if (*l != '\0' || *len <= 0 || *len > 64)
   errx(EX_USAGE, "Bad prefix length: %s", arg);
 } else
  *len = 0;
 free(p);
}
