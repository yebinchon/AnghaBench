
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 scalar_t__ dogetassoc (int *) ;
 int printassoc (int ,int *) ;

__attribute__((used)) static void
associations(
 struct parse *pcmd,
 FILE *fp
 )
{
 if (dogetassoc(fp))
  printassoc(0, fp);
}
