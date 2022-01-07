
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;


 int _gr_fp ;
 struct group _gr_group ;
 int grscan (int ,int ) ;
 int start_gr () ;

struct group *
_getgrent(void)
{
 if (!_gr_fp && !start_gr()) {
  return ((void*)0);
 }


 if (!grscan(0, 0))
  return(((void*)0));
 return(&_gr_group);
}
