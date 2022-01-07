
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tval; int sval; int fval; } ;
typedef TYPE_1__ Cell ;


 int NUM ;
 int STR ;
 int atof (int ) ;
 int dprintf (char*) ;
 scalar_t__ is_number (int ) ;
 char* qstring (char*,char) ;
 int setsval (TYPE_1__*,char*) ;
 TYPE_1__* setsymtab (char*,char*,double,int ,int ) ;
 int symtab ;

void setclvar(char *s)
{
 char *p;
 Cell *q;

 for (p=s; *p != '='; p++)
  ;
 *p++ = 0;
 p = qstring(p, '\0');
 q = setsymtab(s, p, 0.0, STR, symtab);
 setsval(q, p);
 if (is_number(q->sval)) {
  q->fval = atof(q->sval);
  q->tval |= NUM;
 }
    dprintf( ("command line set %s to |%s|\n", s, p) );
}
