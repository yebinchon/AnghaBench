
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int close_table ;
 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static void print_events_table_prefix(FILE *fp, const char *tblname)
{
 fprintf(fp, "static struct pmu_event %s[] = {\n", tblname);
 close_table = 1;
}
