
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ code; } ;
struct slist {TYPE_1__ s; struct slist* next; } ;


 scalar_t__ NOP ;

__attribute__((used)) static u_int
slength(struct slist *s)
{
 u_int n = 0;

 for (; s; s = s->next)
  if (s->s.code != NOP)
   ++n;
 return n;
}
