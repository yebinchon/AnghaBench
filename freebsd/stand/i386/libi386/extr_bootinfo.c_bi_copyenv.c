
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct env_var {char* ev_name; char* ev_value; struct env_var* ev_next; } ;


 struct env_var* environ ;
 int i386_copyin (char*,int,int) ;
 int strlen (char*) ;

vm_offset_t
bi_copyenv(vm_offset_t addr)
{
    struct env_var *ep;


    for (ep = environ; ep != ((void*)0); ep = ep->ev_next) {
 i386_copyin(ep->ev_name, addr, strlen(ep->ev_name));
 addr += strlen(ep->ev_name);
 i386_copyin("=", addr, 1);
 addr++;
 if (ep->ev_value != ((void*)0)) {
     i386_copyin(ep->ev_value, addr, strlen(ep->ev_value));
     addr += strlen(ep->ev_value);
 }
 i386_copyin("", addr, 1);
 addr++;
    }
    i386_copyin("", addr, 1);
    addr++;
    return(addr);
}
