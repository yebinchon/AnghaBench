
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int auditpinfo_t ;


 int A_SETPMASK ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_set_pmask(auditpinfo_t *api, size_t sz)
{

 if (sizeof(*api) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_SETPMASK, api, sz));
}
