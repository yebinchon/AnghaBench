
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache_descr {int dummy; } ;
struct gdbarch {int dummy; } ;


 struct regcache_descr* gdbarch_data (struct gdbarch*,int ) ;
 int regcache_descr_handle ;

__attribute__((used)) static struct regcache_descr *
regcache_descr (struct gdbarch *gdbarch)
{
  return gdbarch_data (gdbarch, regcache_descr_handle);
}
