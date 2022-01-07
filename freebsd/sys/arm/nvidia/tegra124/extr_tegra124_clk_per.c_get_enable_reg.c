
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KASSERT (int,char*) ;
 int * clk_enable_reg ;
 int nitems (int *) ;

__attribute__((used)) static uint32_t
get_enable_reg(int idx)
{
 KASSERT(idx / 32 < nitems(clk_enable_reg),
     ("Invalid clock index for enable: %d", idx));
 return (clk_enable_reg[idx / 32]);
}
