
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 char* Version ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void
version(
 struct parse *pcmd,
 FILE *fp
 )
{

 (void) fprintf(fp, "%s\n", Version);
 return;
}
