
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 struct passwd _pw_passwd ;
 int _pw_stayopen ;
 int endpwent () ;
 int pwscan (int,int ,char const*) ;
 int pwstart () ;

__attribute__((used)) static struct passwd *
gi_getpwnam(const char *name)
{
 int rval;

 if (!pwstart())
  return ((void*)0);
 rval = pwscan(1, 0, name);
 if (!_pw_stayopen)
  endpwent();
 return (rval) ? &_pw_passwd : ((void*)0);
}
