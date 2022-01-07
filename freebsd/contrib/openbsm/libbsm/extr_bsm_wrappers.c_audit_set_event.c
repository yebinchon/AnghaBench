
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_evname_map_t ;


 int A_SETEVENT ;
 int EINVAL ;
 int auditon (int ,int *,size_t) ;
 int errno ;

int
audit_set_event(au_evname_map_t *evn_map, size_t sz)
{

 if (sizeof(*evn_map) != sz) {
  errno = EINVAL;
  return (-1);
 }

 return (auditon(A_SETEVENT, evn_map, sz));
}
