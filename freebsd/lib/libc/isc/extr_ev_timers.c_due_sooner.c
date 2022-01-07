
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int due; } ;
typedef TYPE_1__ evTimer ;


 scalar_t__ evCmpTime (int ,int ) ;

__attribute__((used)) static int
due_sooner(void *a, void *b) {
 evTimer *a_timer, *b_timer;

 a_timer = a;
 b_timer = b;
 return (evCmpTime(a_timer->due, b_timer->due) < 0);
}
