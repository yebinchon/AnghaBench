
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gettystrs {scalar_t__ defalt; scalar_t__ value; scalar_t__ field; } ;
struct gettynums {int defalt; int value; int set; scalar_t__ field; } ;
struct gettyflags {int defalt; int value; int set; scalar_t__ field; } ;


 struct gettyflags* gettyflags ;
 struct gettynums* gettynums ;
 struct gettystrs* gettystrs ;
 scalar_t__ strdup (scalar_t__) ;

void
setdefaults(void)
{
 struct gettystrs *sp;
 struct gettynums *np;
 struct gettyflags *fp;

 for (sp = gettystrs; sp->field; sp++)
  if (!sp->value)
   sp->value = !sp->defalt ? sp->defalt
      : strdup(sp->defalt);
 for (np = gettynums; np->field; np++)
  if (!np->set)
   np->value = np->defalt;
 for (fp = gettyflags; fp->field; fp++)
  if (!fp->set)
   fp->value = fp->defalt;
}
