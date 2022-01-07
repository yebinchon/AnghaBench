
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int sup_total ;
 int* suppressed_fields ;

__attribute__((used)) static int suppress(enum MAD_FIELDS field)
{
 int i = 0;
 for (i = 0; i < sup_total; i++)
  if (field == suppressed_fields[i])
   return 1;
 return 0;
}
