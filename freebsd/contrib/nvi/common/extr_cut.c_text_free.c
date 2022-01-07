
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* lb; } ;
typedef TYPE_1__ TEXT ;


 int free (TYPE_1__*) ;

void
text_free(TEXT *tp)
{
 if (tp->lb != ((void*)0))
  free(tp->lb);
 free(tp);
}
