
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t sl_cur; char** sl_str; } ;
typedef TYPE_1__ StringList ;


 scalar_t__ strcmp (char*,char const*) ;

char *
sl_find(StringList *sl, const char *name)
{
 size_t i;

 for (i = 0; i < sl->sl_cur; i++)
  if (strcmp(sl->sl_str[i], name) == 0)
   return sl->sl_str[i];

 return ((void*)0);
}
