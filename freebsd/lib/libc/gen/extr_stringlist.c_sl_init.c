
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sl_max; int * sl_str; scalar_t__ sl_cur; } ;
typedef TYPE_1__ StringList ;


 int _SL_CHUNKSIZE ;
 int _err (int,char*) ;
 void* malloc (int) ;

StringList *
sl_init(void)
{
 StringList *sl;

 sl = malloc(sizeof(StringList));
 if (sl == ((void*)0))
  _err(1, "stringlist: %m");

 sl->sl_cur = 0;
 sl->sl_max = _SL_CHUNKSIZE;
 sl->sl_str = malloc(sl->sl_max * sizeof(char *));
 if (sl->sl_str == ((void*)0))
  _err(1, "stringlist: %m");
 return sl;
}
