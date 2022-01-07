
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {TYPE_1__* sym_out; int flags; int * ventry; } ;
struct TYPE_5__ {int st_value; } ;
typedef TYPE_2__ SymLook ;
typedef int Obj_Entry ;


 int SYMLOOK_EARLY ;
 int symlook_init (TYPE_2__*,char*) ;
 int symlook_obj (TYPE_2__*,int *) ;

uint64_t
set_gp(Obj_Entry *obj)
{
 uint64_t old;
 SymLook req;
 uint64_t gp;
 int res;

 __asm __volatile("mv    %0, gp" : "=r"(old));

 symlook_init(&req, "__global_pointer$");
 req.ventry = ((void*)0);
 req.flags = SYMLOOK_EARLY;
 res = symlook_obj(&req, obj);

 if (res == 0) {
  gp = req.sym_out->st_value;
  __asm __volatile("mv    gp, %0" :: "r"(gp));
 }

 return (old);
}
