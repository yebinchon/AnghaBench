
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int end; } ;
typedef TYPE_1__ jsmntok_t ;



__attribute__((used)) static void cut_comma(char *map, jsmntok_t *newval)
{
 int i;


 for (i = newval->start; i < newval->end; i++) {
  if (map[i] == ',')
   newval->end = i;
 }
}
