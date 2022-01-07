
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_uri (char*,char const*,char**,char**,int*,char**) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
parse_scp_uri(const char *uri, char **userp, char **hostp, int *portp,
     char **pathp)
{
 int r;

 r = parse_uri("scp", uri, userp, hostp, portp, pathp);
 if (r == 0 && *pathp == ((void*)0))
  *pathp = xstrdup(".");
 return r;
}
