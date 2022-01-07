
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cookie_t ;
struct TYPE_2__ {int initiator; } ;


 int MAXINITIATORS ;
 TYPE_1__* cookiecache ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static int
cookie_find(cookie_t *in)
{
 int i;

 for (i = 0; i < MAXINITIATORS; i++) {
  if (memcmp(in, &cookiecache[i].initiator, sizeof(*in)) == 0)
   return i;
 }

 return -1;
}
