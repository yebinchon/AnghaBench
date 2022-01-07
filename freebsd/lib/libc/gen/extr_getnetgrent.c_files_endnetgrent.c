
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct netgr_state {int dummy; } ;


 int NS_SUCCESS ;
 int NS_UNAVAIL ;
 int netgr_endstate (struct netgr_state*) ;
 scalar_t__ netgr_getstate (struct netgr_state**) ;

__attribute__((used)) static int
files_endnetgrent(void *retval, void *mdata, va_list ap)
{
 struct netgr_state *st;

 if (netgr_getstate(&st) != 0)
  return (NS_UNAVAIL);
 netgr_endstate(st);
 return (NS_SUCCESS);
}
