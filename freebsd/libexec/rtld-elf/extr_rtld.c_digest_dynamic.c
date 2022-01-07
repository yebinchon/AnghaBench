
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Obj_Entry ;
typedef int Elf_Dyn ;


 int digest_dynamic1 (int *,int,int const**,int const**,int const**) ;
 int digest_dynamic2 (int *,int const*,int const*,int const*) ;

__attribute__((used)) static void
digest_dynamic(Obj_Entry *obj, int early)
{
 const Elf_Dyn *dyn_rpath;
 const Elf_Dyn *dyn_soname;
 const Elf_Dyn *dyn_runpath;

 digest_dynamic1(obj, early, &dyn_rpath, &dyn_soname, &dyn_runpath);
 digest_dynamic2(obj, dyn_rpath, dyn_soname, dyn_runpath);
}
