
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_addrtype; int h_addr; } ;
typedef int bdaddr_t ;


 int AF_BLUETOOTH ;
 int NO_RECOVERY ;
 scalar_t__ bcmp (int ,char const*,int) ;
 int bt_endhostent () ;
 struct hostent* bt_gethostent () ;
 int bt_sethostent (int ) ;
 int h_errno ;
 int host_stayopen ;

struct hostent *
bt_gethostbyaddr(char const *addr, int len, int type)
{
 struct hostent *p;

 if (type != AF_BLUETOOTH || len != sizeof(bdaddr_t)) {
  h_errno = NO_RECOVERY;
  return (((void*)0));
 }

 bt_sethostent(host_stayopen);
 while ((p = bt_gethostent()) != ((void*)0))
  if (p->h_addrtype == type && bcmp(p->h_addr, addr, len) == 0)
   break;
 bt_endhostent();

 return (p);
}
