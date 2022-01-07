
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ relro_size; int path; int relro_page; } ;
typedef TYPE_1__ Obj_Entry ;


 int _rtld_error (char*,int ,int,int ) ;
 int errno ;
 int mprotect (int ,scalar_t__,int) ;
 int rtld_strerror (int ) ;

__attribute__((used)) static int
obj_remap_relro(Obj_Entry *obj, int prot)
{

 if (obj->relro_size > 0 && mprotect(obj->relro_page, obj->relro_size,
     prot) == -1) {
  _rtld_error("%s: Cannot set relro protection to %#x: %s",
      obj->path, prot, rtld_strerror(errno));
  return (-1);
 }
 return (0);
}
