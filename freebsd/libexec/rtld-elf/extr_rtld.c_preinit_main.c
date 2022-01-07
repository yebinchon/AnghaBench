
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int preinit_array_num; int path; scalar_t__ preinit_array; } ;
typedef int Elf_Addr ;


 int LD_UTRACE (int ,TYPE_1__*,void*,int ,int ,int ) ;
 int UTRACE_INIT_CALL ;
 int call_init_pointer (TYPE_1__*,int) ;
 int dbg (char*,int ,void*) ;
 TYPE_1__* obj_main ;

__attribute__((used)) static void
preinit_main(void)
{
    Elf_Addr *preinit_addr;
    int index;

    preinit_addr = (Elf_Addr *)obj_main->preinit_array;
    if (preinit_addr == ((void*)0))
 return;

    for (index = 0; index < obj_main->preinit_array_num; index++) {
 if (preinit_addr[index] != 0 && preinit_addr[index] != 1) {
     dbg("calling preinit function for %s at %p", obj_main->path,
       (void *)preinit_addr[index]);
     LD_UTRACE(UTRACE_INIT_CALL, obj_main, (void *)preinit_addr[index],
       0, 0, obj_main->path);
     call_init_pointer(obj_main, preinit_addr[index]);
 }
    }
}
