
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_portstatus(FILE * out, int detail)
{
 fprintf(out, "portstatus [ca|switch|router]\n");
 if (detail) {
  fprintf(out, "summarize port status\n");
  fprintf(out,
   "   [ca|switch|router] -- limit the results to the node type specified\n");
 }

}
