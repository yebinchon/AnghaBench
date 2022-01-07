
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ nl_catd ;
struct TYPE_5__ {scalar_t__ catd; } ;
struct TYPE_4__ {TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;


 int atoi (char const*) ;
 char* catgets (scalar_t__,int,int,char const*) ;
 scalar_t__ isdigit (char const) ;
 size_t strlen (char const*) ;

const char *
msg_cat(
 SCR *sp,
 const char *str,
 size_t *lenp)
{
 GS *gp;
 char *p;
 int msgno;





 if (isdigit(str[0]) &&
     isdigit(str[1]) && isdigit(str[2]) && str[3] == '|') {
  msgno = atoi(str);
  str = &str[4];

  gp = sp == ((void*)0) ? ((void*)0) : sp->gp;
  if (gp != ((void*)0) && gp->catd != (nl_catd)-1 &&
      (p = catgets(gp->catd, 1, msgno, str)) != ((void*)0)) {
   if (lenp != ((void*)0))
    *lenp = strlen(p);
   return (p);
  }
 }
 if (lenp != ((void*)0))
  *lenp = strlen(str);
 return (str);
}
