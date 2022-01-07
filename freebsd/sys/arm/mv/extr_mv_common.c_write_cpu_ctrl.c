
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* write_cpu_ctrl ) (int ,int ) ;} ;


 TYPE_1__* soc_decode_win_spec ;
 int stub1 (int ,int ) ;

void
write_cpu_ctrl(uint32_t reg, uint32_t val)
{

 if (soc_decode_win_spec->write_cpu_ctrl != ((void*)0))
  soc_decode_win_spec->write_cpu_ctrl(reg, val);
}
