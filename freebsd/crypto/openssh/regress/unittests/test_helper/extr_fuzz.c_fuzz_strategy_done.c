
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzz {int strategy; int o1; int o2; int slen; } ;







 int FUZZ_DBG (char*) ;


 int abort () ;
 int fuzz_ntop (int) ;

__attribute__((used)) static int
fuzz_strategy_done(struct fuzz *fuzz)
{
 FUZZ_DBG(("fuzz = %p, strategy = %s, o1 = %zu, o2 = %zu, slen = %zu",
     fuzz, fuzz_ntop(fuzz->strategy), fuzz->o1, fuzz->o2, fuzz->slen));

 switch (fuzz->strategy) {
 case 134:
  return fuzz->o1 >= fuzz->slen * 8;
 case 132:
  return fuzz->o2 >= fuzz->slen * 8;
 case 131:
  return fuzz->o2 >= fuzz->slen;
 case 133:
 case 128:
 case 129:
 case 130:
  return fuzz->o1 >= fuzz->slen;
 default:
  abort();
 }
}
