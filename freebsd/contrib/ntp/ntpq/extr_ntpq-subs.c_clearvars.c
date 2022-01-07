
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int doclearvlist (int ) ;
 int g_varlist ;

__attribute__((used)) static void
clearvars(
 struct parse *pcmd,
 FILE *fp
 )
{
 doclearvlist(g_varlist);
}
