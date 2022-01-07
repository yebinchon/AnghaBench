
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i; } ;
struct TYPE_4__ {TYPE_1__ sourceID; } ;


 int bf_run (char const*) ;
 TYPE_2__* bf_vm ;

int
interp_run(const char *input)
{

 bf_vm->sourceID.i = 0;
 return bf_run(input);
}
