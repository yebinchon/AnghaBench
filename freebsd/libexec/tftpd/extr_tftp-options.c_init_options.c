
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int o_request; } ;


 size_t OPT_ROLLOVER ;
 TYPE_1__* options ;
 int strdup (char*) ;

void
init_options(void)
{

 options[OPT_ROLLOVER].o_request = strdup("0");
}
