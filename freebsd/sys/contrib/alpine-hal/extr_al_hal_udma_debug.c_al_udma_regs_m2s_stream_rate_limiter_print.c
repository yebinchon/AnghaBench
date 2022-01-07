
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_udma {int dummy; } ;
struct TYPE_2__ {int mask; int cfg_token_size_2; int cfg_token_size_1; int cfg_cycle; int cfg_1s; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int m2s ;
 int m2s_stream_rate_limiter ;
 TYPE_1__ rlimit ;

__attribute__((used)) static void al_udma_regs_m2s_stream_rate_limiter_print(struct al_udma *udma)
{
 al_dbg("M2S stream rate limiter regs:\n");

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
   rlimit.cfg_1s);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
   rlimit.cfg_cycle);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
   rlimit.cfg_token_size_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
   rlimit.cfg_token_size_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stream_rate_limiter,
   rlimit.mask);
}
