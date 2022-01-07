
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ code; } ;
struct slist {struct slist* next; TYPE_1__ s; } ;


 scalar_t__ NOP ;

__attribute__((used)) static inline struct slist *
this_op(struct slist *s)
{
 while (s != 0 && s->s.code == NOP)
  s = s->next;
 return s;
}
