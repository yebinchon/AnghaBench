
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_line; } ;
struct futx {int fu_type; int fu_line; } ;



 int MIN (int,int) ;

 struct utmpx* futx_to_utx (struct futx*) ;
 scalar_t__ getfutxent (struct futx*) ;
 int strncmp (int ,int ,int ) ;

struct utmpx *
getutxline(const struct utmpx *line)
{
 struct futx fu;

 for (;;) {
  if (getfutxent(&fu) != 0)
   return (((void*)0));

  switch (fu.fu_type) {
  case 128:
  case 129:
   if (strncmp(fu.fu_line, line->ut_line,
       MIN(sizeof(fu.fu_line), sizeof(line->ut_line))) ==
       0)
    goto found;
   break;
  }
 }

found:
 return (futx_to_utx(&fu));
}
