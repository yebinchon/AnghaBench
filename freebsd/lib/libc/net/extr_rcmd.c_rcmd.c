
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int rcmd_af (char**,int,char const*,char const*,char const*,int*,int ) ;

int
rcmd(char **ahost, int rport, const char *locuser, const char *remuser,
    const char *cmd, int *fd2p)
{
 return rcmd_af(ahost, rport, locuser, remuser, cmd, fd2p, AF_INET);
}
