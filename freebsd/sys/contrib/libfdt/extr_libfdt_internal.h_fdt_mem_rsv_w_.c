
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void fdt_reserve_entry ;


 scalar_t__ fdt_mem_rsv_ (void*,int) ;

__attribute__((used)) static inline struct fdt_reserve_entry *fdt_mem_rsv_w_(void *fdt, int n)
{
 return (void *)(uintptr_t)fdt_mem_rsv_(fdt, n);
}
