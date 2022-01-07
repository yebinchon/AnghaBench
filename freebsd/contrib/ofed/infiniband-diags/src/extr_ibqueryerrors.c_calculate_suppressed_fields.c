
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int IB_PC_FIRST_F ;
 int IB_PC_LAST_F ;
 int add_suppressed (int) ;
 int free (char*) ;
 int mad_field_name (int) ;
 scalar_t__ strcmp (char*,int ) ;
 char* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static void calculate_suppressed_fields(char *str)
{
 enum MAD_FIELDS f;
 char *val, *lasts = ((void*)0);
 char *tmp = strdup(str);

 val = strtok_r(tmp, ",", &lasts);
 while (val) {
  for (f = IB_PC_FIRST_F; f <= IB_PC_LAST_F; f++)
   if (strcmp(val, mad_field_name(f)) == 0)
    add_suppressed(f);
  val = strtok_r(((void*)0), ",", &lasts);
 }

 free(tmp);
}
