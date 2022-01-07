
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct env_var {char* ev_name; char* ev_value; struct env_var* ev_next; } ;
struct TYPE_2__ {int (* arch_copyin ) (char*,int,int) ;} ;


 TYPE_1__ archsw ;
 struct env_var* environ ;
 int strlen (char*) ;
 int stub1 (char*,int,int) ;
 int stub2 (char*,int,int) ;
 int stub3 (char*,int,int) ;
 int stub4 (char*,int,int) ;
 int stub5 (char*,int,int) ;

__attribute__((used)) static vm_offset_t
md_copyenv(vm_offset_t addr)
{
    struct env_var *ep;


    for (ep = environ; ep != ((void*)0); ep = ep->ev_next) {
 archsw.arch_copyin(ep->ev_name, addr, strlen(ep->ev_name));
 addr += strlen(ep->ev_name);
 archsw.arch_copyin("=", addr, 1);
 addr++;
 if (ep->ev_value != ((void*)0)) {
     archsw.arch_copyin(ep->ev_value, addr, strlen(ep->ev_value));
     addr += strlen(ep->ev_value);
 }
 archsw.arch_copyin("", addr, 1);
 addr++;
    }
    archsw.arch_copyin("", addr, 1);
    addr++;
    return(addr);
}
