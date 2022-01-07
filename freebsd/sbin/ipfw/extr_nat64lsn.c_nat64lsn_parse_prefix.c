
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 int AF_INET ;
 int AF_INET6 ;
 int EX_OSERR ;
 int EX_USAGE ;
 int err (int ,int *) ;
 int errx (int ,char*,...) ;
 int free (char*) ;
 int inet_pton (int,char*,void*) ;
 int nat64lsn_apply_mask (int,void*,scalar_t__) ;
 char* strchr (char*,char) ;
 char* strdup (char const*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static void
nat64lsn_parse_prefix(const char *arg, int af, void *prefix, uint16_t *plen)
{
 char *p, *l;

 p = strdup(arg);
 if (p == ((void*)0))
  err(EX_OSERR, ((void*)0));
 if ((l = strchr(p, '/')) != ((void*)0))
  *l++ = '\0';
 if (l == ((void*)0))
  errx(EX_USAGE, "Prefix length required");
 if (inet_pton(af, p, prefix) != 1)
  errx(EX_USAGE, "Bad prefix: %s", p);
 *plen = (uint16_t)strtol(l, &l, 10);
 if (*l != '\0' || *plen == 0 || (af == AF_INET && *plen > 32) ||
     (af == AF_INET6 && *plen > 96))
  errx(EX_USAGE, "Bad prefix length: %s", arg);
 nat64lsn_apply_mask(af, prefix, *plen);
 free(p);
}
