
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int bool_t ;






 int FALSE ;
 int TRUE ;
 int __rpc_lowvers ;
 struct timeval tottimeout ;

bool_t
__rpc_control(int request, void *info)
{
 switch (request) {
 case 130:
  *(struct timeval *)info = tottimeout;
  break;
 case 128:
  tottimeout = *(struct timeval *)info;
  break;
 case 129:
  __rpc_lowvers = *(int *)info;
  break;
 case 131:
  *(int *)info = __rpc_lowvers;
  break;
 default:
  return (FALSE);
 }
 return (TRUE);
}
