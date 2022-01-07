
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uh_handler; } ;


 int LIST_INIT (int *) ;
 int MAX_COPROCS ;
 int gdb_trapper ;
 TYPE_1__ gdb_uh ;
 int install_coproc_handler_static (int ,TYPE_1__*) ;
 int * undefined_handlers ;

void
undefined_init(void)
{
 int loop;


 for (loop = 0; loop < MAX_COPROCS; ++loop)
  LIST_INIT(&undefined_handlers[loop]);


 gdb_uh.uh_handler = gdb_trapper;
 install_coproc_handler_static(0, &gdb_uh);
}
