
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;


 int FALSE ;


 int TRUE ;
 int __svc_maxrec ;

bool_t
rpc_control(int what, void *arg)
{
 int val;

 switch (what) {
 case 128:
  val = *(int *)arg;
  if (val <= 0)
   return FALSE;
  __svc_maxrec = val;
  return TRUE;
 case 129:
  *(int *)arg = __svc_maxrec;
  return TRUE;
 default:
  break;
 }
 return FALSE;
}
