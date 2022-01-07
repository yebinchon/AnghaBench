
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_uri (char*,char const*,char**,char**,int*,char**) ;

int
parse_ssh_uri(const char *uri, char **userp, char **hostp, int *portp)
{
 char *path;
 int r;

 r = parse_uri("ssh", uri, userp, hostp, portp, &path);
 if (r == 0 && path != ((void*)0))
  r = -1;
 return r;
}
