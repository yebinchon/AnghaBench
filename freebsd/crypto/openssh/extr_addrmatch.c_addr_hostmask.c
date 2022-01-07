
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct xaddr {int dummy; } ;


 int addr_invert (struct xaddr*) ;
 int addr_netmask (int,int ,struct xaddr*) ;

__attribute__((used)) static int
addr_hostmask(int af, u_int l, struct xaddr *n)
{
 if (addr_netmask(af, l, n) == -1 || addr_invert(n) == -1)
  return (-1);
 return (0);
}
