
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {char const* perf; scalar_t__ json; } ;
typedef int jsmntok_t ;


 scalar_t__ json_streq (char*,int *,scalar_t__) ;

__attribute__((used)) static const char *field_to_perf(struct map *table, char *map, jsmntok_t *val)
{
 int i;

 for (i = 0; table[i].json; i++) {
  if (json_streq(map, val, table[i].json))
   return table[i].perf;
 }
 return ((void*)0);
}
