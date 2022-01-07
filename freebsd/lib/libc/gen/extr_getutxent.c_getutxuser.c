
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int dummy; } ;
struct futx {int fu_type; int fu_user; } ;



 struct utmpx* futx_to_utx (struct futx*) ;
 scalar_t__ getfutxent (struct futx*) ;
 int strncmp (int ,char const*,int) ;

struct utmpx *
getutxuser(const char *user)
{
 struct futx fu;

 for (;;) {
  if (getfutxent(&fu) != 0)
   return (((void*)0));

  switch (fu.fu_type) {
  case 128:
   if (strncmp(fu.fu_user, user, sizeof(fu.fu_user)) == 0)
    goto found;
   break;
  }
 }

found:
 return (futx_to_utx(&fu));
}
