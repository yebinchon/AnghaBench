
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uschar ;
typedef int Node ;


 int EMPTYRE ;
 int FATAL (char*,int *,int *) ;
 int NIL ;
 int dprintf (char*) ;
 int * lastre ;
 int * op2 (int ,int ,int ) ;
 int * prestr ;
 int * regexp () ;
 char relex () ;
 char rtok ;

Node *reparse(const char *p)
{
 Node *np;

 dprintf( ("reparse <%s>\n", p) );
 lastre = prestr = (uschar *) p;
 rtok = relex();

 if (rtok == '\0') {

  return(op2(EMPTYRE, NIL, NIL));
 }
 np = regexp();
 if (rtok != '\0')
  FATAL("syntax error in regular expression %s at %s", lastre, prestr);
 return(np);
}
