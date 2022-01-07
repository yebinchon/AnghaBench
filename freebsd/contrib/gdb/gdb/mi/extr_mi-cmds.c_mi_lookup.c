
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mi_cmd {int dummy; } ;


 struct mi_cmd** lookup_table (char const*) ;

struct mi_cmd *
mi_lookup (const char *command)
{
  return *lookup_table (command);
}
