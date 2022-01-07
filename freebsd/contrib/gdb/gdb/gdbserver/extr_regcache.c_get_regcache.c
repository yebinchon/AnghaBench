
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct inferior_regcache_data {int registers_valid; } ;


 int fatal (char*) ;
 int fetch_inferior_registers (int ) ;
 scalar_t__ inferior_regcache_data (struct thread_info*) ;

__attribute__((used)) static struct inferior_regcache_data *
get_regcache (struct thread_info *inf, int fetch)
{
  struct inferior_regcache_data *regcache;

  regcache = (struct inferior_regcache_data *) inferior_regcache_data (inf);

  if (regcache == ((void*)0))
    fatal ("no register cache");


  if (fetch && regcache->registers_valid == 0)
    {
      fetch_inferior_registers (0);
      regcache->registers_valid = 1;
    }

  return regcache;
}
