
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct env_var {char* ev_name; char* ev_value; struct env_var* ev_next; } ;


 int CALLBACK (int ,char*,int,int) ;
 int copyin ;
 struct env_var* environ ;
 int strlen (char*) ;

vm_offset_t
bi_copyenv(vm_offset_t addr)
{
    struct env_var *ep;


    for (ep = environ; ep != ((void*)0); ep = ep->ev_next) {
        CALLBACK(copyin, ep->ev_name, addr, strlen(ep->ev_name));
 addr += strlen(ep->ev_name);
 CALLBACK(copyin, "=", addr, 1);
 addr++;
 if (ep->ev_value != ((void*)0)) {
            CALLBACK(copyin, ep->ev_value, addr, strlen(ep->ev_value));
     addr += strlen(ep->ev_value);
 }
 CALLBACK(copyin, "", addr, 1);
 addr++;
    }
    CALLBACK(copyin, "", addr, 1);
    addr++;
    return(addr);
}
