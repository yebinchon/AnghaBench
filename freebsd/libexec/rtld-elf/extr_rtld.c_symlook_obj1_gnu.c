
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {unsigned int* bloom_gnu; size_t maskwords_bm_gnu; size_t shift2_gnu; size_t* buckets_gnu; size_t nbuckets_gnu; size_t* chain_zero_gnu; } ;
struct TYPE_10__ {size_t hash_gnu; TYPE_3__ const* defobj_out; int * sym_out; } ;
struct TYPE_9__ {int vcount; int * vsymp; int * sym_out; } ;
typedef TYPE_1__ Sym_Match_Result ;
typedef TYPE_2__ SymLook ;
typedef TYPE_3__ Obj_Entry ;
typedef unsigned int Elf_Addr ;
typedef size_t Elf32_Word ;


 int ESRCH ;
 size_t __ELF_WORD_SIZE ;
 scalar_t__ matched_symbol (TYPE_2__*,TYPE_3__ const*,TYPE_1__*,unsigned long) ;

__attribute__((used)) static int
symlook_obj1_gnu(SymLook *req, const Obj_Entry *obj)
{
 Elf_Addr bloom_word;
 const Elf32_Word *hashval;
 Elf32_Word bucket;
 Sym_Match_Result matchres;
 unsigned int h1, h2;
 unsigned long symnum;

 matchres.sym_out = ((void*)0);
 matchres.vsymp = ((void*)0);
 matchres.vcount = 0;


 bloom_word = obj->bloom_gnu[(req->hash_gnu / __ELF_WORD_SIZE) &
     obj->maskwords_bm_gnu];


 h1 = req->hash_gnu & (__ELF_WORD_SIZE - 1);
 h2 = ((req->hash_gnu >> obj->shift2_gnu) & (__ELF_WORD_SIZE - 1));


 if (((bloom_word >> h1) & (bloom_word >> h2) & 1) == 0)
  return (ESRCH);


 bucket = obj->buckets_gnu[req->hash_gnu % obj->nbuckets_gnu];
 if (bucket == 0)
  return (ESRCH);
 hashval = &obj->chain_zero_gnu[bucket];
 do {
  if (((*hashval ^ req->hash_gnu) >> 1) == 0) {
   symnum = hashval - obj->chain_zero_gnu;
   if (matched_symbol(req, obj, &matchres, symnum)) {
    req->sym_out = matchres.sym_out;
    req->defobj_out = obj;
    return (0);
   }
  }
 } while ((*hashval++ & 1) == 0);
 if (matchres.vcount == 1) {
  req->sym_out = matchres.vsymp;
  req->defobj_out = obj;
  return (0);
 }
 return (ESRCH);
}
