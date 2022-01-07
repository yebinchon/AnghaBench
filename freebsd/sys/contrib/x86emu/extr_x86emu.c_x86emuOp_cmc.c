
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x86emu {int dummy; } ;


 scalar_t__ ACCESS_FLAG (int ) ;
 int CLEAR_FLAG (int ) ;
 int F_CF ;
 int SET_FLAG (int ) ;

__attribute__((used)) static void
x86emuOp_cmc(struct x86emu *emu)
{
 if (ACCESS_FLAG(F_CF))
  CLEAR_FLAG(F_CF);
 else
  SET_FLAG(F_CF);
}
