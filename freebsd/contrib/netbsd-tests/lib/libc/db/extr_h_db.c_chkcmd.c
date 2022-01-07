
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum S { ____Placeholder_S } S ;


 int COMMAND ;
 int errx (int,char*,int ) ;
 int lineno ;

__attribute__((used)) static void
chkcmd(enum S state)
{
 if (state != COMMAND)
  errx(1, "line %zu: not expecting command", lineno);
}
