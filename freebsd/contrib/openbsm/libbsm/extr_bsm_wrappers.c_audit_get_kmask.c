
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_mask_t ;


 int A_GETKMASK ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_get_kmask(au_mask_t *kmask, size_t sz)
{
 if (sizeof(*kmask) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_GETKMASK, kmask, sz));
}
