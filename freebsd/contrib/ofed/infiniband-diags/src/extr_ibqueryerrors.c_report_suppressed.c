
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* mad_field_name (int ) ;
 int printf (char*,...) ;
 int sup_total ;
 int * suppressed_fields ;

__attribute__((used)) static void report_suppressed(void)
{
 int i = 0;
 printf("## Suppressed:");
 for (i = 0; i < sup_total; i++)
  printf(" %s", mad_field_name(suppressed_fields[i]));
 printf("\n");
}
