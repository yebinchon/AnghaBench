
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int * name; } ;
typedef TYPE_1__ token_t ;


 scalar_t__ strcasecmp (int *,char*) ;

int
lookup(token_t *tbl, char *m)
{
     token_t *tp;

     for(tp = tbl; tp->name != ((void*)0); tp++)
   if(strcasecmp(tp->name, m) == 0)
        return tp->val;
     return 0;
}
