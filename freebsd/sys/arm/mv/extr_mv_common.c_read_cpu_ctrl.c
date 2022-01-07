
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* read_cpu_ctrl ) (int) ;} ;


 TYPE_1__* soc_decode_win_spec ;
 int stub1 (int) ;

uint32_t
read_cpu_ctrl(uint32_t reg)
{

 if (soc_decode_win_spec->read_cpu_ctrl != ((void*)0))
  return (soc_decode_win_spec->read_cpu_ctrl(reg));
 return (-1);
}
