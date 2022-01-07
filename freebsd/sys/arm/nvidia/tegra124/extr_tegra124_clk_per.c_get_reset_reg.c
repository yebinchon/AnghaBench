
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int KASSERT (int,char*) ;
 int * clk_reset_reg ;
 int nitems (int *) ;

__attribute__((used)) static uint32_t
get_reset_reg(int idx)
{
 KASSERT(idx / 32 < nitems(clk_reset_reg),
     ("Invalid clock index for reset: %d", idx));
 return (clk_reset_reg[idx / 32]);
}
