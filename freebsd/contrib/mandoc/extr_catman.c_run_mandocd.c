
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockfdstr ;


 int err (int,char*) ;
 int execlp (char*,char*,char*,char const*,char*,char const*,...) ;
 int snprintf (char*,int,char*,int) ;

void
run_mandocd(int sockfd, const char *outtype, const char* defos)
{
 char sockfdstr[10];

 if (snprintf(sockfdstr, sizeof(sockfdstr), "%d", sockfd) == -1)
  err(1, "snprintf");
 if (defos == ((void*)0))
  execlp("mandocd", "mandocd", "-T", outtype,
      sockfdstr, (char *)((void*)0));
 else
  execlp("mandocd", "mandocd", "-T", outtype,
      "-I", defos, sockfdstr, (char *)((void*)0));
 err(1, "exec");
}
