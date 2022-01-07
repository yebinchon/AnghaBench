
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int dummy; } ;
struct gdbarch_tdep {size_t sizeof_gregset; size_t sizeof_fpregset; struct regset const* fpregset; struct regset const* gregset; } ;
struct gdbarch {int dummy; } ;


 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;
 scalar_t__ strcmp (char const*,char*) ;

const struct regset *
sparc_regset_from_core_section (struct gdbarch *gdbarch,
    const char *sect_name, size_t sect_size)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  if (strcmp (sect_name, ".reg") == 0 && sect_size >= tdep->sizeof_gregset)
    return tdep->gregset;

  if (strcmp (sect_name, ".reg2") == 0 && sect_size >= tdep->sizeof_fpregset)
    return tdep->fpregset;

  return ((void*)0);
}
