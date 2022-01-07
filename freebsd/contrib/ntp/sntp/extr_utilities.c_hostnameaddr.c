
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int snprintf (char*,int,char*,...) ;
 char* stoa (int const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

const char *
hostnameaddr(
 const char * hostname,
 const sockaddr_u * addr
 )
{
 const char * addrtxt;
 char * result;
 int cnt;

 addrtxt = stoa(addr);
 LIB_GETBUF(result);
 if (strcmp(hostname, addrtxt))
  cnt = snprintf(result, LIB_BUFLENGTH, "%s %s",
          hostname, addrtxt);
 else
  cnt = snprintf(result, LIB_BUFLENGTH, "%s", addrtxt);
 if (cnt >= LIB_BUFLENGTH)
  snprintf(result, LIB_BUFLENGTH,
    "hostnameaddr ERROR have %d (%d needed)",
    LIB_BUFLENGTH, cnt + 1);

 return result;
}
