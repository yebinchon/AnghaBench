
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int printassoc (int ,int *) ;

__attribute__((used)) static void
passociations(
 struct parse *pcmd,
 FILE *fp
 )
{
 printassoc(0, fp);
}
