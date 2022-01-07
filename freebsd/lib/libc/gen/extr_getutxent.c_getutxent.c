
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;
struct futx {int dummy; } ;


 struct utmpx* futx_to_utx (struct futx*) ;
 scalar_t__ getfutxent (struct futx*) ;

struct utmpx *
getutxent(void)
{
 struct futx fu;

 if (getfutxent(&fu) != 0)
  return (((void*)0));
 return (futx_to_utx(&fu));
}
