
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;


 int PROT_READ ;
 int obj_remap_relro (int *,int ) ;

__attribute__((used)) static int
obj_enforce_relro(Obj_Entry *obj)
{

 return (obj_remap_relro(obj, PROT_READ));
}
