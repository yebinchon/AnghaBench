
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int doprintvlist (int ,int *) ;
 int g_varlist ;

__attribute__((used)) static void
showvars(
 struct parse *pcmd,
 FILE *fp
 )
{
 doprintvlist(g_varlist, fp);
}
