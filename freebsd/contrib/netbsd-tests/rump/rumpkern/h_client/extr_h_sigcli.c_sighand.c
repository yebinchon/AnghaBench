
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int __arraycount (int ) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int hostnamebuf ;
 int hostnamemib ;
 int rump_sys___sysctl (int ,int ,char*,size_t*,int *,int ) ;
 int sigexecs ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void
sighand(int sig)
{
 char buf[128];
 size_t blen = sizeof(buf);

 if (rump_sys___sysctl(hostnamemib, __arraycount(hostnamemib),
     buf, &blen, ((void*)0), 0) == -1)
  err(1, "sighand sysctl");
 if (strcmp(buf, hostnamebuf) != 0)
  errx(1, "sighandler hostname");
 sigexecs++;
}
