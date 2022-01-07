
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct env_var {char* ev_name; char* ev_value; struct env_var* ev_next; } ;
struct TYPE_2__ {int (* arch_copyin ) (char*,scalar_t__,size_t) ;} ;


 TYPE_1__ archsw ;
 struct env_var* environ ;
 size_t strlen (char*) ;
 int stub1 (char*,scalar_t__,size_t) ;
 int stub2 (char*,scalar_t__,int) ;
 int stub3 (char*,scalar_t__,size_t) ;
 int stub4 (char*,scalar_t__,int) ;
 int stub5 (char*,scalar_t__,int) ;

__attribute__((used)) static vm_offset_t
bi_copyenv(vm_offset_t start)
{
 struct env_var *ep;
 vm_offset_t addr, last;
 size_t len;

 addr = last = start;


 for (ep = environ; ep != ((void*)0); ep = ep->ev_next) {
  len = strlen(ep->ev_name);
  if ((size_t)archsw.arch_copyin(ep->ev_name, addr, len) != len)
   break;
  addr += len;
  if (archsw.arch_copyin("=", addr, 1) != 1)
   break;
  addr++;
  if (ep->ev_value != ((void*)0)) {
   len = strlen(ep->ev_value);
   if ((size_t)archsw.arch_copyin(ep->ev_value, addr, len) != len)
    break;
   addr += len;
  }
  if (archsw.arch_copyin("", addr, 1) != 1)
   break;
  last = ++addr;
 }

 if (archsw.arch_copyin("", last++, 1) != 1)
  last = start;
 return(last);
}
