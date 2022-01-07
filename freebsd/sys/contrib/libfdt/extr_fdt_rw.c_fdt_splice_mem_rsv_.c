
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_reserve_entry {int dummy; } ;


 scalar_t__ fdt_off_dt_strings (void*) ;
 scalar_t__ fdt_off_dt_struct (void*) ;
 int fdt_set_off_dt_strings (void*,scalar_t__) ;
 int fdt_set_off_dt_struct (void*,scalar_t__) ;
 int fdt_splice_ (void*,struct fdt_reserve_entry*,int,int) ;

__attribute__((used)) static int fdt_splice_mem_rsv_(void *fdt, struct fdt_reserve_entry *p,
          int oldn, int newn)
{
 int delta = (newn - oldn) * sizeof(*p);
 int err;
 err = fdt_splice_(fdt, p, oldn * sizeof(*p), newn * sizeof(*p));
 if (err)
  return err;
 fdt_set_off_dt_struct(fdt, fdt_off_dt_struct(fdt) + delta);
 fdt_set_off_dt_strings(fdt, fdt_off_dt_strings(fdt) + delta);
 return 0;
}
