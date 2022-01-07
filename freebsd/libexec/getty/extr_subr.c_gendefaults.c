
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gettystrs {scalar_t__ value; int defalt; scalar_t__ field; } ;
struct gettynums {int value; int defalt; scalar_t__ set; scalar_t__ field; } ;
struct gettyflags {int invrt; int defalt; int value; scalar_t__ set; scalar_t__ field; } ;


 struct gettyflags* gettyflags ;
 struct gettynums* gettynums ;
 struct gettystrs* gettystrs ;
 int strdup (scalar_t__) ;

void
gendefaults(void)
{
 struct gettystrs *sp;
 struct gettynums *np;
 struct gettyflags *fp;

 for (sp = gettystrs; sp->field; sp++)
  if (sp->value)
   sp->defalt = strdup(sp->value);
 for (np = gettynums; np->field; np++)
  if (np->set)
   np->defalt = np->value;
 for (fp = gettyflags; fp->field; fp++)
  if (fp->set)
   fp->defalt = fp->value;
  else
   fp->defalt = fp->invrt;
}
