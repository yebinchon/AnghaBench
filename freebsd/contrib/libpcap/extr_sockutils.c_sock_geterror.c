
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLastError () ;
 int errno ;
 int sock_fmterror (char const*,int ,char*,int) ;

void sock_geterror(const char *caller, char *errbuf, int errbuflen)
{





 if (errbuf == ((void*)0))
  return;
 sock_fmterror(caller, errno, errbuf, errbuflen);

}
