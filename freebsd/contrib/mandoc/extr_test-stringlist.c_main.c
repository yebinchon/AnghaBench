
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sl_cur; char** sl_str; } ;
typedef TYPE_1__ StringList ;


 scalar_t__ sl_add (TYPE_1__*,char*) ;
 int sl_free (TYPE_1__*,int ) ;
 TYPE_1__* sl_init () ;

int
main(void)
{
 StringList *sl;
 char teststr[] = "test";

 if ((sl = sl_init()) == ((void*)0))
  return 1;
 if (sl_add(sl, teststr))
  return 2;
 if (sl->sl_cur != 1)
  return 3;
 if (sl->sl_str[0] != teststr)
  return 4;

 sl_free(sl, 0);
 return 0;
}
