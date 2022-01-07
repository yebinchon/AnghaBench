
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int gid_t ;


 struct group _gr_group ;
 int _gr_stayopen ;
 int endgrent () ;
 int grscan (int,int ,int *) ;
 int grstart () ;

__attribute__((used)) static struct group *
gi_getgrgid(gid_t gid)
{
 int rval;

 if (!grstart())
  return ((void*)0);
 rval = grscan(1, gid, ((void*)0));
 if (!_gr_stayopen)
  endgrent();
 return (rval) ? &_gr_group : ((void*)0);
}
