
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int NIL ;



 int * op2 (int const,int *,int ) ;
 int relex () ;
 int rtok ;

Node *unary(Node *np)
{
 switch (rtok) {
 case 128:
  rtok = relex();
  return (unary(op2(128, np, NIL)));
 case 130:
  rtok = relex();
  return (unary(op2(130, np, NIL)));
 case 129:
  rtok = relex();
  return (unary(op2(129, np, NIL)));
 default:
  return (np);
 }
}
