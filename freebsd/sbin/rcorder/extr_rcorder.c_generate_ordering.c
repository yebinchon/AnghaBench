
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int filename; } ;
struct TYPE_3__ {TYPE_2__* next; } ;


 int DPRINTF (int ) ;
 int do_file (TYPE_2__*) ;
 TYPE_1__* fn_head ;
 int stderr ;

__attribute__((used)) static void
generate_ordering(void)
{
 while (fn_head->next != ((void*)0)) {
  DPRINTF((stderr, "generate on %s\n", fn_head->next->filename));
  do_file(fn_head->next);
 }
}
