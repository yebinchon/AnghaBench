
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzz {int strategy; size_t slen; size_t o1; int * fuzzed; } ;
 int abort () ;
 int assert (int) ;

size_t
fuzz_len(struct fuzz *fuzz)
{
 assert(fuzz->fuzzed != ((void*)0));
 switch (fuzz->strategy) {
 case 134:
 case 132:
 case 133:
 case 131:
 case 130:
  return fuzz->slen;
 case 128:
 case 129:
  assert(fuzz->o1 <= fuzz->slen);
  return fuzz->slen - fuzz->o1;
 default:
  abort();
 }
}
