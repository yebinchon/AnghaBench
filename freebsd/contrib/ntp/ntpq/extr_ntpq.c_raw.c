
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int rawmode ;

__attribute__((used)) static void
raw(
 struct parse *pcmd,
 FILE *fp
 )
{
 rawmode = 1;
 (void) fprintf(fp, "Output set to raw\n");
}
