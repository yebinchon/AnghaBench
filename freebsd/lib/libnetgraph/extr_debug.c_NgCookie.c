
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cookie; char const* type; } ;


 TYPE_1__* cookies ;

__attribute__((used)) static const char *
NgCookie(int cookie)
{
 int k;

 for (k = 0; cookies[k].cookie != 0; k++) {
  if (cookies[k].cookie == cookie)
   return cookies[k].type;
 }
 return "??";
}
