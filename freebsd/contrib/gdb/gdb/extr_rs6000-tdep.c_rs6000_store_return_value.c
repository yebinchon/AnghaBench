
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch_tdep {scalar_t__ ppc_gp0_regnum; scalar_t__ ppc_vr0_regnum; } ;


 int DEPRECATED_REGISTER_BYTE (scalar_t__) ;
 scalar_t__ FP0_REGNUM ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_ARRAY ;
 scalar_t__ TYPE_CODE_FLT ;
 int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_VECTOR (struct type*) ;
 int current_gdbarch ;
 int deprecated_write_register_bytes (int ,char*,int) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;

__attribute__((used)) static void
rs6000_store_return_value (struct type *type, char *valbuf)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  if (TYPE_CODE (type) == TYPE_CODE_FLT)





    deprecated_write_register_bytes (DEPRECATED_REGISTER_BYTE (FP0_REGNUM + 1), valbuf,
         TYPE_LENGTH (type));
  else if (TYPE_CODE (type) == TYPE_CODE_ARRAY)
    {
      if (TYPE_LENGTH (type) == 16
          && TYPE_VECTOR (type))
 deprecated_write_register_bytes (DEPRECATED_REGISTER_BYTE (tdep->ppc_vr0_regnum + 2),
      valbuf, TYPE_LENGTH (type));
    }
  else

    deprecated_write_register_bytes (DEPRECATED_REGISTER_BYTE (gdbarch_tdep (current_gdbarch)->ppc_gp0_regnum + 3),
         valbuf, TYPE_LENGTH (type));
}
