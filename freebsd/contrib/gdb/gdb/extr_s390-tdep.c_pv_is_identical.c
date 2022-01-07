
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prologue_value {int kind; int k; int reg; } ;


 int gdb_assert (int ) ;




__attribute__((used)) static int
pv_is_identical (struct prologue_value *a,
                 struct prologue_value *b)
{
  if (a->kind != b->kind)
    return 0;

  switch (a->kind)
    {
    case 128:
      return 1;
    case 130:
      return (a->k == b->k);
    case 129:
      return (a->reg == b->reg && a->k == b->k);
    default:
      gdb_assert (0);
    }
}
