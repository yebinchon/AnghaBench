
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 struct group _gr_group ;
 int _gr_stayopen ;
 int endgrent () ;
 int grscan (int,int ,char const*) ;
 int grstart () ;

__attribute__((used)) static struct group *
gi_getgrnam(const char *name)
{
 int rval;

 if (!grstart())
  return ((void*)0);
 rval = grscan(1, 0, name);
 if (!_gr_stayopen)
  endgrent();
 return (rval) ? &_gr_group : ((void*)0);
}
