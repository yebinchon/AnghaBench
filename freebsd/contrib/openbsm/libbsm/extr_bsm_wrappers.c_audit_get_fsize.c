
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_fstat_t ;


 int A_GETFSIZE ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_get_fsize(au_fstat_t *fstat, size_t sz)
{

 if (sizeof(*fstat) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_GETFSIZE, fstat, sz));
}
