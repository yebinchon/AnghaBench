
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mi_cmd {int name; } ;
struct TYPE_2__ {int rehash; int hit; int miss; } ;


 unsigned int MI_TABLE_SIZE ;
 struct mi_cmd** mi_table ;
 TYPE_1__ stats ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct mi_cmd **
lookup_table (const char *command)
{
  const char *chp;
  unsigned int index = 0;

  for (chp = command; *chp; chp++)
    {

      index = ((index << 6) + (unsigned int) *chp) % MI_TABLE_SIZE;
    }

  while (1)
    {
      struct mi_cmd **entry = &mi_table[index];
      if ((*entry) == 0)
 {

   stats.miss++;
   return entry;
 }
      if (strcmp (command, (*entry)->name) == 0)
 {
   stats.hit++;
   return entry;
 }
      index = (index + 1) % MI_TABLE_SIZE;
      stats.rehash++;
    }
}
