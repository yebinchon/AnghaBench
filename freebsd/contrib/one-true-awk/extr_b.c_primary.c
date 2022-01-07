
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;







 int FATAL (char*,int ,int ) ;
 int HAT ;

 int * NIL ;
 void* basestr ;
 scalar_t__ cclenter (char*) ;
 int * itonp (int ) ;
 void* lastatom ;
 int lastre ;
 int * op2 (int const,int *,int *) ;
 int prestr ;
 int * regexp () ;
 int relex () ;
 scalar_t__ rlxstr ;
 int rlxval ;
 int rtok ;
 void* starttok ;
 scalar_t__ tostring (char*) ;
 int * unary (int *) ;

Node *primary(void)
{
 Node *np;
 int savelastatom;

 switch (rtok) {
 case 131:
  lastatom = starttok;
  np = op2(131, NIL, itonp(rlxval));
  rtok = relex();
  return (unary(np));
 case 133:
  rtok = relex();
  return (unary(op2(133, NIL, NIL)));
 case 129:
  rtok = relex();
  return (unary(op2(129, NIL, NIL)));
 case 130:
  lastatom = starttok;
  rtok = relex();
  return (unary(op2(130, NIL, NIL)));
 case 132:
  np = op2(132, NIL, (Node*) cclenter((char *) rlxstr));
  lastatom = starttok;
  rtok = relex();
  return (unary(np));
 case 128:
  np = op2(128, NIL, (Node *) cclenter((char *) rlxstr));
  lastatom = starttok;
  rtok = relex();
  return (unary(np));
 case '^':
  rtok = relex();
  return (unary(op2(131, NIL, itonp(HAT))));
 case '$':
  rtok = relex();
  return (unary(op2(131, NIL, NIL)));
 case '(':
  lastatom = starttok;
  savelastatom = starttok - basestr;
  rtok = relex();
  if (rtok == ')') {
   rtok = relex();
   return unary(op2(132, NIL, (Node *) tostring("")));
  }
  np = regexp();
  if (rtok == ')') {
   lastatom = basestr + savelastatom;
   rtok = relex();
   return (unary(np));
  }
  else
   FATAL("syntax error in regular expression %s at %s", lastre, prestr);
 default:
  FATAL("illegal primary in regular expression %s at %s", lastre, prestr);
 }
 return 0;
}
