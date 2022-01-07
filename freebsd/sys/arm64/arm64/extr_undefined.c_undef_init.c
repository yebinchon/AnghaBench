
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int gdb_trapper ;
 int id_aa64mmfr2_handler ;
 int install_undef_handler (int,int ) ;
 int * undef_handlers ;

void
undef_init(void)
{

 LIST_INIT(&undef_handlers[0]);
 LIST_INIT(&undef_handlers[1]);

 install_undef_handler(0, id_aa64mmfr2_handler);



}
