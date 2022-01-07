
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timezone {int dummy; } ;
struct timeval {int dummy; } ;
struct bintime {int dummy; } ;
struct TYPE_4__ {scalar_t__ tk_ver; } ;


 int ENOSYS ;
 scalar_t__ VDSO_TK_VER_CURR ;
 int __vdso_gettimekeep (TYPE_1__**) ;
 int bintime2timeval (struct bintime*,struct timeval*) ;
 int binuptime (struct bintime*,TYPE_1__*,int) ;
 TYPE_1__* tk ;

int
__vdso_gettimeofday(struct timeval *tv, struct timezone *tz)
{
 struct bintime bt;
 int error;

 if (tz != ((void*)0))
  return (ENOSYS);
 if (tk == ((void*)0)) {
  error = __vdso_gettimekeep(&tk);
  if (error != 0 || tk == ((void*)0))
   return (ENOSYS);
 }
 if (tk->tk_ver != VDSO_TK_VER_CURR)
  return (ENOSYS);
 error = binuptime(&bt, tk, 1);
 if (error != 0)
  return (error);
 bintime2timeval(&bt, tv);
 return (0);
}
