
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_evclass_map_t ;


 int A_SETCLASS ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_set_class(au_evclass_map_t *evc_map, size_t sz)
{

 if (sizeof(*evc_map) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_SETCLASS, evc_map, sz));
}
