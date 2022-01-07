
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pw_stayopen ;
 int pwstart () ;

__attribute__((used)) static int
gi_setpassent(int stayopen)
{

 if (!pwstart())
  return 0;
 _pw_stayopen = stayopen;
 return 1;
}
