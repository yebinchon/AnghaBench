
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wordent {TYPE_1__* next; } ;
struct TYPE_2__ {char* word; } ;


 int discardExcess (int ) ;
 int enthist (int ,struct wordent*,int,int,int ) ;
 int eventno ;
 int histlen ;

void
savehist(
  struct wordent *sp,
  int mflg)
{

    if (sp && sp->next->word[0] == '\n')
 return;
    if (sp)
        (void) enthist(++eventno, sp, 1, mflg, histlen);
    discardExcess(histlen);
}
