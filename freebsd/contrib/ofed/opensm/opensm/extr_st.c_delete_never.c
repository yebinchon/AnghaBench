
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ st_data_t ;


 int ST_CONTINUE ;
 int ST_DELETE ;

__attribute__((used)) static int delete_never(st_data_t key, st_data_t value, st_data_t never)
{
 if (value == never)
  return ST_DELETE;
 return ST_CONTINUE;
}
