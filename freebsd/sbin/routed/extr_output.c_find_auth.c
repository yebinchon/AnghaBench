
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct interface {struct auth* int_auth; } ;
struct auth {scalar_t__ type; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 int MAX_AUTH_KEYS ;
 scalar_t__ RIP_AUTH_NONE ;
 TYPE_1__ clk ;

struct auth *
find_auth(struct interface *ifp)
{
 struct auth *ap, *res;
 int i;


 if (ifp == ((void*)0))
  return 0;

 res = ((void*)0);
 ap = ifp->int_auth;
 for (i = 0; i < MAX_AUTH_KEYS; i++, ap++) {

  if (ap->type == RIP_AUTH_NONE)
   break;


  if ((u_long)ap->start > (u_long)clk.tv_sec)
   continue;

  if ((u_long)ap->end < (u_long)clk.tv_sec) {

   if (res == ((void*)0) || (u_long)ap->end > (u_long)res->end)
    res = ap;
   continue;
  }


  if (res == ((void*)0) || (u_long)res->end < (u_long)ap->end)
   res = ap;
 }
 return res;
}
