
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int auditpinfo_addr_t ;


 int A_GETPINFO_ADDR ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_get_pinfo_addr(auditpinfo_addr_t *apia, size_t sz)
{

 if (sizeof(*apia) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_GETPINFO_ADDR, apia, sz));
}
