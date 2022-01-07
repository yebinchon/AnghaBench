
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; } ;


 int CMD_ERROR ;
 int CMD_OK ;
 int C_PRESENTIN ;
 int C_PRESENTOUT ;
 int comc_curspeed ;
 int comc_port ;
 int comc_setup (int ,int ) ;
 TYPE_1__ comconsole ;

__attribute__((used)) static int
comc_init(int arg)
{

 comc_setup(comc_curspeed, comc_port);

 if ((comconsole.c_flags & (C_PRESENTIN | C_PRESENTOUT)) ==
     (C_PRESENTIN | C_PRESENTOUT))
  return (CMD_OK);
 return (CMD_ERROR);
}
