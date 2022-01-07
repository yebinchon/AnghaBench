
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sl_cur; int sl_max; char** sl_str; } ;
typedef TYPE_1__ StringList ;


 scalar_t__ _SL_CHUNKSIZE ;
 char** reallocf (char**,int) ;

int
sl_add(StringList *sl, char *name)
{
 if (sl->sl_cur == sl->sl_max - 1) {
  sl->sl_max += _SL_CHUNKSIZE;
  sl->sl_str = reallocf(sl->sl_str, sl->sl_max * sizeof(char *));
  if (sl->sl_str == ((void*)0))
   return (-1);
 }
 sl->sl_str[sl->sl_cur++] = name;
 return (0);
}
