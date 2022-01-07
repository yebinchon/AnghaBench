
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* win_cesa_attr ) (int) ;} ;


 TYPE_1__* soc_decode_win_spec ;
 int stub1 (int) ;

__attribute__((used)) static int mv_win_cesa_attr(int eng_sel)
{

 if (soc_decode_win_spec->win_cesa_attr != ((void*)0))
  return (soc_decode_win_spec->win_cesa_attr(eng_sel));

 return (-1);
}
