
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* regoff; } ;


 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;

__attribute__((used)) static int
rs6000_register_byte (int n)
{
  return gdbarch_tdep (current_gdbarch)->regoff[n];
}
