
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {unsigned long* buckets; size_t nbuckets; unsigned long* chains; unsigned long nchains; } ;
struct TYPE_10__ {size_t hash; TYPE_3__ const* defobj_out; int * sym_out; } ;
struct TYPE_9__ {int vcount; int * vsymp; int * sym_out; } ;
typedef TYPE_1__ Sym_Match_Result ;
typedef TYPE_2__ SymLook ;
typedef TYPE_3__ Obj_Entry ;


 int ESRCH ;
 unsigned long STN_UNDEF ;
 scalar_t__ matched_symbol (TYPE_2__*,TYPE_3__ const*,TYPE_1__*,unsigned long) ;

__attribute__((used)) static int
symlook_obj1_sysv(SymLook *req, const Obj_Entry *obj)
{
 unsigned long symnum;
 Sym_Match_Result matchres;

 matchres.sym_out = ((void*)0);
 matchres.vsymp = ((void*)0);
 matchres.vcount = 0;

 for (symnum = obj->buckets[req->hash % obj->nbuckets];
     symnum != STN_UNDEF; symnum = obj->chains[symnum]) {
  if (symnum >= obj->nchains)
   return (ESRCH);

  if (matched_symbol(req, obj, &matchres, symnum)) {
   req->sym_out = matchres.sym_out;
   req->defobj_out = obj;
   return (0);
  }
 }
 if (matchres.vcount == 1) {
  req->sym_out = matchres.vsymp;
  req->defobj_out = obj;
  return (0);
 }
 return (ESRCH);
}
