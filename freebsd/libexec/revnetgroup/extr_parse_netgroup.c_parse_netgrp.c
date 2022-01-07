
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netgrp {char** ng_str; struct netgrp* ng_next; } ;
struct linelist {int l_parsed; char* l_line; int l_groupname; struct linelist* l_next; } ;
struct TYPE_2__ {struct netgrp* gr; } ;


 size_t NG_DOM ;
 size_t NG_HOST ;
 size_t NG_USER ;
 int bcopy (char*,char*,int) ;
 int bzero (char*,int) ;
 TYPE_1__ grouphead ;
 struct linelist* linehead ;
 scalar_t__ malloc (int) ;
 struct linelist* read_for_group (char*) ;
 int strcmp (char*,int ) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;
 char* strsep (char**,char*) ;
 int warnx (char*,char*,...) ;

__attribute__((used)) static int
parse_netgrp(char *group)
{
 char *spos, *epos;
 int len, strpos;



 char *pos, *gpos;
 struct netgrp *grp;
 struct linelist *lp = linehead;




 while (lp) {
  if (!strcmp(group, lp->l_groupname))
   break;
  lp = lp->l_next;
 }
 if (lp == (struct linelist *)0 &&
     (lp = read_for_group(group)) == (struct linelist *)0)
  return (1);
 if (lp->l_parsed) {
  return (1);
 } else
  lp->l_parsed = 1;
 pos = lp->l_line;

 while (pos != ((void*)0) && *pos != '\0') {
  if (*pos == '(') {
   grp = (struct netgrp *)malloc(sizeof (struct netgrp));
   bzero((char *)grp, sizeof (struct netgrp));
   grp->ng_next = grouphead.gr;
   grouphead.gr = grp;
   pos++;
   gpos = strsep(&pos, ")");



   for (strpos = 0; strpos < 3; strpos++) {
    if ((spos = strsep(&gpos, ","))) {



     while (*spos == ' ' || *spos == '\t')
      spos++;
     if ((epos = strpbrk(spos, " \t"))) {
      *epos = '\0';
      len = epos - spos;
     } else
      len = strlen(spos);
     if (len > 0) {
      grp->ng_str[strpos] = (char *)
       malloc(len + 1);
      bcopy(spos, grp->ng_str[strpos],
       len + 1);
     }
    } else {






     grp->ng_str[strpos] = ((void*)0);
    }
   }
  } else {
   spos = strsep(&pos, ", \t");
   if (parse_netgrp(spos))
    continue;
  }

  if (pos != ((void*)0))
   while (*pos == ' ' || *pos == ',' || *pos == '\t')
    pos++;
 }
 return (0);
}
