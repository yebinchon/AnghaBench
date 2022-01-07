
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct fuzz {int strategy; int * fuzzed; int slen; int o1; } ;
 int abort () ;
 int assert (int) ;

u_char *
fuzz_ptr(struct fuzz *fuzz)
{
 assert(fuzz->fuzzed != ((void*)0));
 switch (fuzz->strategy) {
 case 134:
 case 132:
 case 133:
 case 131:
 case 130:
  return fuzz->fuzzed;
 case 128:
  assert(fuzz->o1 <= fuzz->slen);
  return fuzz->fuzzed + fuzz->o1;
 case 129:
  assert(fuzz->o1 <= fuzz->slen);
  return fuzz->fuzzed;
 default:
  abort();
 }
}
