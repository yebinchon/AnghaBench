
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct tidx {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef int ipfw_insn ;
typedef int buf ;


 int AF_INET6 ;
 int INET6_ADDRSTRLEN ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ IPPROTO_IPV6 ;
 int * add_srcip (int *,char*,int,struct tidx*) ;
 int * add_srcip6 (int *,char*,int,struct tidx*) ;
 int inet_pton (int ,char*,struct in6_addr*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static ipfw_insn *
add_src(ipfw_insn *cmd, char *av, u_char proto, int cblen, struct tidx *tstate)
{
 struct in6_addr a;
 char *host, *ch, buf[INET6_ADDRSTRLEN];
 ipfw_insn *ret = ((void*)0);
 int len;


 if ((ch = strpbrk(av, "/,")) != ((void*)0)) {
  len = ch - av;
  strlcpy(buf, av, sizeof(buf));
  if (len < sizeof(buf))
   buf[len] = '\0';
  host = buf;
 } else
  host = av;

 if (proto == IPPROTO_IPV6 || strcmp(av, "me6") == 0 ||
     inet_pton(AF_INET6, host, &a) == 1)
  ret = add_srcip6(cmd, av, cblen, tstate);

 if (ret == ((void*)0) && (proto == IPPROTO_IP || strcmp(av, "me") == 0 ||
     inet_pton(AF_INET6, host, &a) != 1))
  ret = add_srcip(cmd, av, cblen, tstate);
 if (ret == ((void*)0) && strcmp(av, "any") != 0)
  ret = cmd;

 return ret;
}
