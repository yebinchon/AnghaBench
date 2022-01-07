
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_stat_t ;


 int A_GETSTAT ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_get_stat(au_stat_t *stats, size_t sz)
{

 if (sizeof(*stats) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_GETSTAT, stats, sz));
}
