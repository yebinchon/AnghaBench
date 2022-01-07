
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int tmp_addr ;
struct xaddr {int af; } ;


 int addr_and (struct xaddr*,struct xaddr*,struct xaddr*) ;
 int addr_hostmask (int ,int ,struct xaddr*) ;
 int addr_is_all0s (struct xaddr*) ;
 int memcpy (struct xaddr*,struct xaddr const*,int) ;

__attribute__((used)) static int
addr_host_is_all0s(const struct xaddr *a, u_int masklen)
{
 struct xaddr tmp_addr, tmp_mask, tmp_result;

 memcpy(&tmp_addr, a, sizeof(tmp_addr));
 if (addr_hostmask(a->af, masklen, &tmp_mask) == -1)
  return (-1);
 if (addr_and(&tmp_result, &tmp_addr, &tmp_mask) == -1)
  return (-1);
 return (addr_is_all0s(&tmp_result));
}
