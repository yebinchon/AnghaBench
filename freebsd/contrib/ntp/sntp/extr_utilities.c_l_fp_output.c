
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 char* prettydate (int *) ;

void
l_fp_output(
 l_fp * ts,
 FILE * output
 )
{
 fprintf(output, "%s\n", prettydate(ts));
}
