
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum S { ____Placeholder_S } S ;


 int KEY ;
 int errx (int,char*,int ) ;
 int lineno ;

__attribute__((used)) static void
chkkey(enum S state)
{
 if (state != KEY)
  errx(1, "line %zu: not expecting a key", lineno);
}
