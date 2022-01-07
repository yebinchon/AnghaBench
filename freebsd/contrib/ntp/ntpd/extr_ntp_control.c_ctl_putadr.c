
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int sockaddr_u ;


 int ctl_putunqstr (char const*,char const*,int ) ;
 char* numtoa (int ) ;
 char* stoa (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void
ctl_putadr(
 const char *tag,
 u_int32 addr32,
 sockaddr_u *addr
 )
{
 const char *cq;

 if (((void*)0) == addr)
  cq = numtoa(addr32);
 else
  cq = stoa(addr);
 ctl_putunqstr(tag, cq, strlen(cq));
}
