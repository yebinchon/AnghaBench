
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;
struct addrinfo {int ai_family; int s_addr; int ai_flags; } ;
struct pf_addr {struct addrinfo v6; struct addrinfo v4; } ;
typedef int hints ;




 int AI_NUMERICHOST ;
 int bzero (struct addrinfo*,int) ;
 int errx (int,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int htonl (int ) ;
 int memset (void*,int,int) ;
 char* strchr (char*,char) ;
 int strtonum (char*,int ,int,char const**) ;

void
pfctl_addrprefix(char *addr, struct pf_addr *mask)
{
 char *p;
 const char *errstr;
 int prefix, ret_ga, q, r;
 struct addrinfo hints, *res;

 if ((p = strchr(addr, '/')) == ((void*)0))
  return;

 *p++ = '\0';
 prefix = strtonum(p, 0, 128, &errstr);
 if (errstr)
  errx(1, "prefix is %s: %s", errstr, p);

 bzero(&hints, sizeof(hints));

 hints.ai_flags |= AI_NUMERICHOST;

 if ((ret_ga = getaddrinfo(addr, ((void*)0), &hints, &res))) {
  errx(1, "getaddrinfo: %s", gai_strerror(ret_ga));

 }

 if (res->ai_family == 129 && prefix > 32)
  errx(1, "prefix too long for AF_INET");
 else if (res->ai_family == 128 && prefix > 128)
  errx(1, "prefix too long for AF_INET6");

 q = prefix >> 3;
 r = prefix & 7;
 switch (res->ai_family) {
 case 129:
  bzero(&mask->v4, sizeof(mask->v4));
  mask->v4.s_addr = htonl((u_int32_t)
      (0xffffffffffULL << (32 - prefix)));
  break;
 case 128:
  bzero(&mask->v6, sizeof(mask->v6));
  if (q > 0)
   memset((void *)&mask->v6, 0xff, q);
  if (r > 0)
   *((u_char *)&mask->v6 + q) =
       (0xff00 >> r) & 0xff;
  break;
 }
 freeaddrinfo(res);
}
