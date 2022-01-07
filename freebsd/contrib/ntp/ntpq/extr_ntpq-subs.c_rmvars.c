
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* argval; } ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 int dormvlist (int ,int ) ;
 int g_varlist ;

__attribute__((used)) static void
rmvars(
 struct parse *pcmd,
 FILE *fp
 )
{
 dormvlist(g_varlist, pcmd->argval[0].string);
}
