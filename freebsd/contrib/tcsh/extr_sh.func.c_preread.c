
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ w_end; } ;


 int TCSH_I_SEEK ;
 int TC_BREAK ;
 int btell (TYPE_2__*) ;
 int cleanup_until (int*) ;
 int pintr_push_enable (int*) ;
 int search (int ,int ,int *) ;
 scalar_t__ setintr ;
 TYPE_1__* whyles ;

__attribute__((used)) static void
preread(void)
{
    int old_pintr_disabled;

    whyles->w_end.type = TCSH_I_SEEK;
    if (setintr)
 pintr_push_enable(&old_pintr_disabled);
    search(TC_BREAK, 0, ((void*)0));
    if (setintr)
 cleanup_until(&old_pintr_disabled);
    btell(&whyles->w_end);
}
