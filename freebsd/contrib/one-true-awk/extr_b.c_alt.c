
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 scalar_t__ OR ;
 int concat (int ) ;
 int * op2 (scalar_t__,int *,int ) ;
 int primary () ;
 scalar_t__ relex () ;
 scalar_t__ rtok ;

Node *alt(Node *np)
{
 if (rtok == OR) {
  rtok = relex();
  return (alt(op2(OR, np, concat(primary()))));
 }
 return (np);
}
