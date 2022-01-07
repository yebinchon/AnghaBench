
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fuzz {scalar_t__ strategies; } ;


 int FUZZ_DBG (char*) ;
 scalar_t__ fuzz_strategy_done (struct fuzz*) ;

int
fuzz_done(struct fuzz *fuzz)
{
 FUZZ_DBG(("fuzz = %p, strategies = 0x%lx", fuzz,
     (u_long)fuzz->strategies));

 return fuzz_strategy_done(fuzz) && fuzz->strategies == 0;
}
