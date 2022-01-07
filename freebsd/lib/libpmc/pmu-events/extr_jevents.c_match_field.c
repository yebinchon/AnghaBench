
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field {int kernel; scalar_t__ field; } ;
typedef int jsmntok_t ;


 int addfield (char*,char**,char*,int ,int *) ;
 int cut_comma (char*,int *) ;
 struct field* fields ;
 scalar_t__ json_streq (char*,int *,scalar_t__) ;

__attribute__((used)) static int match_field(char *map, jsmntok_t *field, int nz,
         char **event, jsmntok_t *val)
{
 struct field *f;
 jsmntok_t newval = *val;

 for (f = fields; f->field; f++)
  if (json_streq(map, field, f->field) && nz) {
   cut_comma(map, &newval);
   addfield(map, event, ",", f->kernel, &newval);
   return 1;
  }
 return 0;
}
