
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void
ntp_poll(
 struct parse *pcmd,
 FILE *fp
 )
{
 (void) fprintf(fp, "poll not implemented yet\n");
}
