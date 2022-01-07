
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int relocated; int version; int magic; int mainprog; scalar_t__ bind_now; scalar_t__ textrel; int path; scalar_t__ valid_hash_gnu; scalar_t__ valid_hash_sysv; int * strtab; int * symtab; } ;
typedef int RtldLockState ;
typedef TYPE_1__ Obj_Entry ;


 int RTLD_MAGIC ;
 int RTLD_VERSION ;
 int _rtld_error (char*,int ) ;
 int dbg (char*,int ) ;
 int init_pltgot (TYPE_1__*) ;
 int obj_enforce_relro (TYPE_1__*) ;
 int reloc_jmpslots (TYPE_1__*,int,int *) ;
 scalar_t__ reloc_non_plt (TYPE_1__*,TYPE_1__*,int,int *) ;
 int reloc_plt (TYPE_1__*,int,int *) ;
 scalar_t__ reloc_textrel_prot (TYPE_1__*,int) ;

__attribute__((used)) static int
relocate_object(Obj_Entry *obj, bool bind_now, Obj_Entry *rtldobj,
    int flags, RtldLockState *lockstate)
{

 if (obj->relocated)
  return (0);
 obj->relocated = 1;
 if (obj != rtldobj)
  dbg("relocating \"%s\"", obj->path);

 if (obj->symtab == ((void*)0) || obj->strtab == ((void*)0) ||
     !(obj->valid_hash_sysv || obj->valid_hash_gnu)) {
  _rtld_error("%s: Shared object has no run-time symbol table",
       obj->path);
  return (-1);
 }


 if (obj->textrel && reloc_textrel_prot(obj, 1) != 0)
  return (-1);


 if (reloc_non_plt(obj, rtldobj, flags, lockstate))
  return (-1);


 if (obj->textrel && reloc_textrel_prot(obj, 0) != 0)
  return (-1);


 init_pltgot(obj);


 if (reloc_plt(obj, flags, lockstate) == -1)
  return (-1);

 if ((obj->bind_now || bind_now) && reloc_jmpslots(obj, flags,
     lockstate) == -1)
  return (-1);

 if (!obj->mainprog && obj_enforce_relro(obj) == -1)
  return (-1);






 obj->magic = RTLD_MAGIC;
 obj->version = RTLD_VERSION;

 return (0);
}
