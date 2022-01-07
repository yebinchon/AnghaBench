
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vm_offset_t ;
typedef int buf ;
struct TYPE_2__ {int (* arch_copyin ) (char*,size_t,size_t) ;} ;


 TYPE_1__ archsw ;
 int bzero (char*,int) ;
 size_t min (int,size_t) ;
 int stub1 (char*,size_t,size_t) ;

void
kern_bzero(vm_offset_t dest, size_t len)
{
 char buf[256];
 size_t chunk, resid;

 bzero(buf, sizeof(buf));
 resid = len;
 while (resid > 0) {
  chunk = min(sizeof(buf), resid);
  archsw.arch_copyin(buf, dest, chunk);
  resid -= chunk;
  dest += chunk;
 }
}
