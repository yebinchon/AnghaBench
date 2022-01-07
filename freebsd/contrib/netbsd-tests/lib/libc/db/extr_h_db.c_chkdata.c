
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum S { ____Placeholder_S } S ;


 int DATA ;
 int errx (int,char*,int ) ;
 int lineno ;

__attribute__((used)) static void
chkdata(enum S state)
{
 if (state != DATA)
  errx(1, "line %zu: not expecting data", lineno);
}
