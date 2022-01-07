
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int __pw_initpwd (struct passwd*) ;

void
pw_initpwd(struct passwd *pw)
{

 __pw_initpwd(pw);
}
