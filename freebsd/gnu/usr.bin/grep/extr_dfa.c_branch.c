
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAT ;
 scalar_t__ OR ;
 scalar_t__ RPAREN ;
 int addtok (int ) ;
 int closure () ;
 scalar_t__ tok ;

__attribute__((used)) static void
branch (void)
{
  closure();
  while (tok != RPAREN && tok != OR && tok >= 0)
    {
      closure();
      addtok(CAT);
    }
}
