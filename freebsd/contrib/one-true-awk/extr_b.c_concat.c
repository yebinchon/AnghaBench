
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;



 int const CAT ;





 int * NIL ;
 int * op2 (int const,int *,int *) ;
 int * primary () ;
 int relex () ;
 int rtok ;
 scalar_t__ tostring (char*) ;

Node *concat(Node *np)
{
 switch (rtok) {
 case 131: case 130: case 133: case 132: case 128: case '$': case '(':
  return (concat(op2(CAT, np, primary())));
 case 129:
  rtok = relex();
  return (concat(op2(CAT, op2(132, NIL, (Node *) tostring("")),
    primary())));
 }
 return (np);
}
