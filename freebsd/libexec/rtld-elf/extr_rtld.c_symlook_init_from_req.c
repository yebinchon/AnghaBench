
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lockstate; int * sym_out; int * defobj_out; int flags; int ventry; int hash_gnu; int hash; int name; } ;
typedef TYPE_1__ SymLook ;



__attribute__((used)) static void
symlook_init_from_req(SymLook *dst, const SymLook *src)
{

 dst->name = src->name;
 dst->hash = src->hash;
 dst->hash_gnu = src->hash_gnu;
 dst->ventry = src->ventry;
 dst->flags = src->flags;
 dst->defobj_out = ((void*)0);
 dst->sym_out = ((void*)0);
 dst->lockstate = src->lockstate;
}
