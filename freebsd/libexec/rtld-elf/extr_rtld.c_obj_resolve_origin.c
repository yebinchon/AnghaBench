
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * origin_path; int path; } ;
typedef TYPE_1__ Obj_Entry ;


 int PATH_MAX ;
 int rtld_dirname_abs (int ,int *) ;
 int * xmalloc (int ) ;

__attribute__((used)) static bool
obj_resolve_origin(Obj_Entry *obj)
{

 if (obj->origin_path != ((void*)0))
  return (1);
 obj->origin_path = xmalloc(PATH_MAX);
 return (rtld_dirname_abs(obj->path, obj->origin_path) != -1);
}
