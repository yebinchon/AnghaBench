
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int auditinfo_addr_t ;


 int A_GETKAUDIT ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_get_kaudit(auditinfo_addr_t *aia, size_t sz)
{

 if (sizeof(*aia) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_GETKAUDIT, aia, sz));
}
