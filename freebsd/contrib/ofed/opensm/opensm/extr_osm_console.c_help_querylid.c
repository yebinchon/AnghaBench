
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_querylid(FILE * out, int detail)
{
 fprintf(out,
  "querylid lid -- print internal information about the lid specified\n");
}
