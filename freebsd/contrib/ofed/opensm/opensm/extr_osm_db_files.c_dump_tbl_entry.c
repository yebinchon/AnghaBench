
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ st_data_t ;
typedef int FILE ;


 int ST_CONTINUE ;
 int fprintf (int *,char*,char*,char*) ;

__attribute__((used)) static int dump_tbl_entry(st_data_t key, st_data_t val, st_data_t arg)
{
 FILE *p_file = (FILE *) arg;
 char *p_key = (char *)key;
 char *p_val = (char *)val;

 fprintf(p_file, "%s %s\n\n", p_key, p_val);
 return ST_CONTINUE;
}
