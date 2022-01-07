
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int start; } ;
typedef TYPE_1__ jsmntok_t ;


 unsigned int json_len (TYPE_1__*) ;
 unsigned int strlen (char const*) ;
 int strncasecmp (char*,char const*,unsigned int) ;

int json_streq(char *map, jsmntok_t *t, const char *s)
{
 unsigned len = json_len(t);
 return len == strlen(s) && !strncasecmp(map + t->start, s, len);
}
