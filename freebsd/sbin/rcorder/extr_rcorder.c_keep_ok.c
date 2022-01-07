
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; struct TYPE_5__* next; } ;
typedef TYPE_1__ strnodelist ;
struct TYPE_6__ {TYPE_1__* keyword_list; } ;
typedef TYPE_2__ filenode ;


 TYPE_1__* keep_list ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
keep_ok(filenode *fnode)
{
 strnodelist *s;
 strnodelist *k;

 for (s = keep_list; s; s = s->next)
  for (k = fnode->keyword_list; k; k = k->next)
   if (strcmp(k->s, s->s) == 0)
    return (1);


 return (!keep_list);
}
