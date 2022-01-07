
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mode; int * com; } ;
typedef TYPE_1__ PORT_PARM ;


 int DEFAULT_N_COM ;
 int get_mbg_comparam (unsigned char**,int *) ;

void
get_mbg_portparam(
 unsigned char **buffpp,
 PORT_PARM *portparamp
 )
{
  int i;

  for (i = 0; i < DEFAULT_N_COM; i++)
    {
      get_mbg_comparam(buffpp, &portparamp->com[i]);
    }
  for (i = 0; i < DEFAULT_N_COM; i++)
    {
      portparamp->mode[i] = *(*buffpp)++;
    }
}
