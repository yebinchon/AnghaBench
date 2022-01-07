
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_update_desc(FILE *out, int detail)
{
 fprintf(out, "update_desc\n");
 if (detail) {
  fprintf(out, "update node description for all nodes\n");
 }
}
