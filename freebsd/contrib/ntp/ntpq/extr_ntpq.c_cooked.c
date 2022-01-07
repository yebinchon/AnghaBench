
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 scalar_t__ rawmode ;

__attribute__((used)) static void
cooked(
 struct parse *pcmd,
 FILE *fp
 )
{
 rawmode = 0;
 (void) fprintf(fp, "Output set to cooked\n");
 return;
}
