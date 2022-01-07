
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int auditinfo_addr_t ;


 int A_SETKAUDIT ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_set_kaudit(auditinfo_addr_t *aia, size_t sz)
{

 if (sizeof(*aia) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_SETKAUDIT, aia, sz));
}
